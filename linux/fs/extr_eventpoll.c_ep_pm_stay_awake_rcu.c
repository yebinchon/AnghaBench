
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wakeup_source {int dummy; } ;
struct epitem {int ws; } ;


 int __pm_stay_awake (struct wakeup_source*) ;
 struct wakeup_source* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static inline void ep_pm_stay_awake_rcu(struct epitem *epi)
{
 struct wakeup_source *ws;

 rcu_read_lock();
 ws = rcu_dereference(epi->ws);
 if (ws)
  __pm_stay_awake(ws);
 rcu_read_unlock();
}
