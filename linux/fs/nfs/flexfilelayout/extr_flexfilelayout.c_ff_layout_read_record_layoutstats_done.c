
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rpc_task {int dummy; } ;
struct TYPE_5__ {int count; } ;
struct TYPE_4__ {int count; } ;
struct nfs_pgio_header {TYPE_3__* lseg; TYPE_2__ res; TYPE_1__ args; int pgio_mirror_idx; int flags; } ;
struct TYPE_6__ {int pls_flags; } ;


 int FF_LAYOUT_COMP (TYPE_3__*,int ) ;
 int NFS_IOHDR_STAT ;
 int NFS_LSEG_LAYOUTRETURN ;
 int nfs4_ff_layout_stat_io_end_read (struct rpc_task*,int ,int ,int ) ;
 int set_bit (int ,int *) ;
 int test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void ff_layout_read_record_layoutstats_done(struct rpc_task *task,
  struct nfs_pgio_header *hdr)
{
 if (!test_and_clear_bit(NFS_IOHDR_STAT, &hdr->flags))
  return;
 nfs4_ff_layout_stat_io_end_read(task,
   FF_LAYOUT_COMP(hdr->lseg, hdr->pgio_mirror_idx),
   hdr->args.count,
   hdr->res.count);
 set_bit(NFS_LSEG_LAYOUTRETURN, &hdr->lseg->pls_flags);
}
