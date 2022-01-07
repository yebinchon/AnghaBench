
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netns_ipvs {int sync_buff_lock; } ;
struct ipvs_master_sync_state {struct ip_vs_sync_buff* sync_buff; } ;
struct ip_vs_sync_buff {scalar_t__ firstuse; } ;


 int TASK_RUNNING ;
 int __set_current_state (int ) ;
 scalar_t__ jiffies ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ time_after_eq (scalar_t__,unsigned long) ;

__attribute__((used)) static inline struct ip_vs_sync_buff *
get_curr_sync_buff(struct netns_ipvs *ipvs, struct ipvs_master_sync_state *ms,
     unsigned long time)
{
 struct ip_vs_sync_buff *sb;

 spin_lock_bh(&ipvs->sync_buff_lock);
 sb = ms->sync_buff;
 if (sb && time_after_eq(jiffies - sb->firstuse, time)) {
  ms->sync_buff = ((void*)0);
  __set_current_state(TASK_RUNNING);
 } else
  sb = ((void*)0);
 spin_unlock_bh(&ipvs->sync_buff_lock);
 return sb;
}
