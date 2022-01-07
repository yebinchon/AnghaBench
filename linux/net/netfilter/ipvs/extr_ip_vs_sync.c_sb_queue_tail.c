
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netns_ipvs {int sync_state; int ms; int sync_lock; TYPE_1__* master_tinfo; } ;
struct ipvs_master_sync_state {scalar_t__ sync_queue_len; scalar_t__ sync_queue_delay; int sync_queue; int master_wakeup_work; struct ip_vs_sync_buff* sync_buff; } ;
struct ip_vs_sync_buff {int list; } ;
struct TYPE_2__ {int task; } ;


 int IPVS_SYNC_SEND_DELAY ;
 scalar_t__ IPVS_SYNC_WAKEUP_RATE ;
 int IP_VS_STATE_MASTER ;
 int ip_vs_sync_buff_release (struct ip_vs_sync_buff*) ;
 int list_add_tail (int *,int *) ;
 int max (int ,int) ;
 int schedule_delayed_work (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ sysctl_sync_qlen_max (struct netns_ipvs*) ;
 int wake_up_process (int ) ;

__attribute__((used)) static inline void sb_queue_tail(struct netns_ipvs *ipvs,
     struct ipvs_master_sync_state *ms)
{
 struct ip_vs_sync_buff *sb = ms->sync_buff;

 spin_lock(&ipvs->sync_lock);
 if (ipvs->sync_state & IP_VS_STATE_MASTER &&
     ms->sync_queue_len < sysctl_sync_qlen_max(ipvs)) {
  if (!ms->sync_queue_len)
   schedule_delayed_work(&ms->master_wakeup_work,
           max(IPVS_SYNC_SEND_DELAY, 1));
  ms->sync_queue_len++;
  list_add_tail(&sb->list, &ms->sync_queue);
  if ((++ms->sync_queue_delay) == IPVS_SYNC_WAKEUP_RATE) {
   int id = (int)(ms - ipvs->ms);

   wake_up_process(ipvs->master_tinfo[id].task);
  }
 } else
  ip_vs_sync_buff_release(sb);
 spin_unlock(&ipvs->sync_lock);
}
