
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct the_nilfs {int ns_sufile; } ;
struct TYPE_2__ {int flags; } ;
struct nilfs_sc_info {int sc_nfreesegs; int sc_freesegs; TYPE_1__ sc_stage; int sc_segbufs; int sc_write_logs; } ;


 int LIST_HEAD (int ) ;
 int NILFS_CF_SUFREED ;
 int WARN_ON (int) ;
 int list_splice_tail_init (int *,int *) ;
 int logs ;
 int nilfs_abort_logs (int *,int) ;
 int nilfs_cancel_segusage (int *,int ) ;
 int nilfs_destroy_logs (int *) ;
 int nilfs_free_incomplete_logs (int *,struct the_nilfs*) ;
 int nilfs_sufile_cancel_freev (int ,int ,int ,int *) ;
 int nilfs_wait_on_logs (int *) ;

__attribute__((used)) static void nilfs_segctor_abort_construction(struct nilfs_sc_info *sci,
          struct the_nilfs *nilfs, int err)
{
 LIST_HEAD(logs);
 int ret;

 list_splice_tail_init(&sci->sc_write_logs, &logs);
 ret = nilfs_wait_on_logs(&logs);
 nilfs_abort_logs(&logs, ret ? : err);

 list_splice_tail_init(&sci->sc_segbufs, &logs);
 nilfs_cancel_segusage(&logs, nilfs->ns_sufile);
 nilfs_free_incomplete_logs(&logs, nilfs);

 if (sci->sc_stage.flags & NILFS_CF_SUFREED) {
  ret = nilfs_sufile_cancel_freev(nilfs->ns_sufile,
      sci->sc_freesegs,
      sci->sc_nfreesegs,
      ((void*)0));
  WARN_ON(ret);
 }

 nilfs_destroy_logs(&logs);
}
