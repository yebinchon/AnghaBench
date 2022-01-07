
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_subsystem {int name; struct event_subsystem* filter_string; int list; struct event_subsystem* filter; } ;
struct event_filter {int name; struct event_filter* filter_string; int list; struct event_filter* filter; } ;


 int WARN_ON_ONCE (int) ;
 int kfree (struct event_subsystem*) ;
 int kfree_const (int ) ;
 int list_del (int *) ;
 scalar_t__ system_refcount (struct event_subsystem*) ;
 scalar_t__ system_refcount_dec (struct event_subsystem*) ;

__attribute__((used)) static void __put_system(struct event_subsystem *system)
{
 struct event_filter *filter = system->filter;

 WARN_ON_ONCE(system_refcount(system) == 0);
 if (system_refcount_dec(system))
  return;

 list_del(&system->list);

 if (filter) {
  kfree(filter->filter_string);
  kfree(filter);
 }
 kfree_const(system->name);
 kfree(system);
}
