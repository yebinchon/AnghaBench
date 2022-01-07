
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int tk_start; } ;
struct nfs4_ff_layout_mirror {int lock; int flags; int read_stat; } ;
typedef int __u64 ;


 int NFS4_FF_MIRROR_STAT_AVAIL ;
 int ktime_get () ;
 int nfs4_ff_layout_stat_io_update_completed (int *,int ,int ,int ,int ) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
nfs4_ff_layout_stat_io_end_read(struct rpc_task *task,
  struct nfs4_ff_layout_mirror *mirror,
  __u64 requested,
  __u64 completed)
{
 spin_lock(&mirror->lock);
 nfs4_ff_layout_stat_io_update_completed(&mirror->read_stat,
   requested, completed,
   ktime_get(), task->tk_start);
 set_bit(NFS4_FF_MIRROR_STAT_AVAIL, &mirror->flags);
 spin_unlock(&mirror->lock);
}
