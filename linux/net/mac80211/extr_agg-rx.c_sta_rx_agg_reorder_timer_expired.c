
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct tid_ampdu_rx {int tid; int sta; } ;


 struct tid_ampdu_rx* from_timer (int ,struct timer_list*,int ) ;
 int ieee80211_release_reorder_timeout (int ,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int reorder_timer ;
 struct tid_ampdu_rx* tid_rx ;

__attribute__((used)) static void sta_rx_agg_reorder_timer_expired(struct timer_list *t)
{
 struct tid_ampdu_rx *tid_rx = from_timer(tid_rx, t, reorder_timer);

 rcu_read_lock();
 ieee80211_release_reorder_timeout(tid_rx->sta, tid_rx->tid);
 rcu_read_unlock();
}
