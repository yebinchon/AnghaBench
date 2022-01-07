
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_subsystem {int dummy; } ;


 int WARN_ON_ONCE (int) ;
 scalar_t__ system_refcount (struct event_subsystem*) ;
 int system_refcount_inc (struct event_subsystem*) ;

__attribute__((used)) static void __get_system(struct event_subsystem *system)
{
 WARN_ON_ONCE(system_refcount(system) == 0);
 system_refcount_inc(system);
}
