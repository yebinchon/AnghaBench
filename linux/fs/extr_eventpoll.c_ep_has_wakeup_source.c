
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct epitem {int ws; } ;


 scalar_t__ rcu_access_pointer (int ) ;

__attribute__((used)) static inline bool ep_has_wakeup_source(struct epitem *epi)
{
 return rcu_access_pointer(epi->ws) ? 1 : 0;
}
