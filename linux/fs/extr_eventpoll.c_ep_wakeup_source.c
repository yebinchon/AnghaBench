
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wakeup_source {int dummy; } ;
struct epitem {TYPE_1__* ep; int ws; } ;
struct TYPE_2__ {int mtx; } ;


 int lockdep_is_held (int *) ;
 struct wakeup_source* rcu_dereference_check (int ,int ) ;

__attribute__((used)) static inline struct wakeup_source *ep_wakeup_source(struct epitem *epi)
{
 return rcu_dereference_check(epi->ws, lockdep_is_held(&epi->ep->mtx));
}
