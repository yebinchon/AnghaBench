
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int dummy; } ;
struct nilfs_sc_info {int sc_write_logs; int sc_segbufs; } ;


 int list_splice_tail_init (int *,int *) ;
 int nilfs_write_logs (int *,struct the_nilfs*) ;

__attribute__((used)) static int nilfs_segctor_write(struct nilfs_sc_info *sci,
          struct the_nilfs *nilfs)
{
 int ret;

 ret = nilfs_write_logs(&sci->sc_segbufs, nilfs);
 list_splice_tail_init(&sci->sc_segbufs, &sci->sc_write_logs);
 return ret;
}
