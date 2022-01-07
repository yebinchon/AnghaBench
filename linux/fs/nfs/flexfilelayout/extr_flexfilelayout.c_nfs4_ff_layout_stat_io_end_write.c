
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int tk_start; } ;
struct nfs4_ff_layout_mirror {int lock; int flags; int write_stat; } ;
typedef enum nfs3_stable_how { ____Placeholder_nfs3_stable_how } nfs3_stable_how ;
typedef scalar_t__ __u64 ;


 int NFS4_FF_MIRROR_STAT_AVAIL ;
 int NFS_UNSTABLE ;
 int ktime_get () ;
 int nfs4_ff_layout_stat_io_update_completed (int *,scalar_t__,scalar_t__,int ,int ) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
nfs4_ff_layout_stat_io_end_write(struct rpc_task *task,
  struct nfs4_ff_layout_mirror *mirror,
  __u64 requested,
  __u64 completed,
  enum nfs3_stable_how committed)
{
 if (committed == NFS_UNSTABLE)
  requested = completed = 0;

 spin_lock(&mirror->lock);
 nfs4_ff_layout_stat_io_update_completed(&mirror->write_stat,
   requested, completed, ktime_get(), task->tk_start);
 set_bit(NFS4_FF_MIRROR_STAT_AVAIL, &mirror->flags);
 spin_unlock(&mirror->lock);
}
