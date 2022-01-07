
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_subsystem {int ref_count; int name; int list; int * filter; } ;
struct event_filter {int dummy; } ;


 int GFP_KERNEL ;
 int event_subsystems ;
 int kfree (struct event_subsystem*) ;
 int kfree_const (int ) ;
 struct event_subsystem* kmalloc (int,int ) ;
 int kstrdup_const (char const*,int ) ;
 int * kzalloc (int,int ) ;
 int list_add (int *,int *) ;

__attribute__((used)) static struct event_subsystem *
create_new_subsystem(const char *name)
{
 struct event_subsystem *system;


 system = kmalloc(sizeof(*system), GFP_KERNEL);
 if (!system)
  return ((void*)0);

 system->ref_count = 1;


 system->name = kstrdup_const(name, GFP_KERNEL);
 if (!system->name)
  goto out_free;

 system->filter = ((void*)0);

 system->filter = kzalloc(sizeof(struct event_filter), GFP_KERNEL);
 if (!system->filter)
  goto out_free;

 list_add(&system->list, &event_subsystems);

 return system;

 out_free:
 kfree_const(system->name);
 kfree(system);
 return ((void*)0);
}
