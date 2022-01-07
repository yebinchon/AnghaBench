
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_task {int tk_start; } ;
struct TYPE_2__ {int count; } ;
struct nfs_pgio_header {TYPE_1__ args; int pgio_mirror_idx; int lseg; int inode; int flags; } ;


 int FF_LAYOUT_COMP (int ,int ) ;
 int NFS_IOHDR_STAT ;
 int nfs4_ff_layout_stat_io_start_read (int ,int ,int ,int ) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static void ff_layout_read_record_layoutstats_start(struct rpc_task *task,
  struct nfs_pgio_header *hdr)
{
 if (test_and_set_bit(NFS_IOHDR_STAT, &hdr->flags))
  return;
 nfs4_ff_layout_stat_io_start_read(hdr->inode,
   FF_LAYOUT_COMP(hdr->lseg, hdr->pgio_mirror_idx),
   hdr->args.count,
   task->tk_start);
}
