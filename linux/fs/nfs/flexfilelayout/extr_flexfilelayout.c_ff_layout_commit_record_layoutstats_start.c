
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int tk_start; } ;
struct nfs_commit_data {int ds_commit_index; int lseg; int inode; int flags; } ;


 int FF_LAYOUT_COMP (int ,int ) ;
 int NFS_IOHDR_STAT ;
 int nfs4_ff_layout_stat_io_start_write (int ,int ,int ,int ) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static void ff_layout_commit_record_layoutstats_start(struct rpc_task *task,
  struct nfs_commit_data *cdata)
{
 if (test_and_set_bit(NFS_IOHDR_STAT, &cdata->flags))
  return;
 nfs4_ff_layout_stat_io_start_write(cdata->inode,
   FF_LAYOUT_COMP(cdata->lseg, cdata->ds_commit_index),
   0, task->tk_start);
}
