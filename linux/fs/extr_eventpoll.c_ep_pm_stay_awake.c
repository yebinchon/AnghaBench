
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wakeup_source {int dummy; } ;
struct epitem {int dummy; } ;


 int __pm_stay_awake (struct wakeup_source*) ;
 struct wakeup_source* ep_wakeup_source (struct epitem*) ;

__attribute__((used)) static inline void ep_pm_stay_awake(struct epitem *epi)
{
 struct wakeup_source *ws = ep_wakeup_source(epi);

 if (ws)
  __pm_stay_awake(ws);
}
