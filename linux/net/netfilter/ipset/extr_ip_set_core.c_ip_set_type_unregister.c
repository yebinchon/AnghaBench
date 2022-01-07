
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_set_type {int revision_min; int family; int name; int list; } ;


 int family_name (int ) ;
 int find_set_type (int ,int ,int ) ;
 int ip_set_type_lock () ;
 int ip_set_type_unlock () ;
 int list_del_rcu (int *) ;
 int pr_debug (char*,int ,int ,int ) ;
 int pr_warn (char*,int ,int ,int ) ;
 int synchronize_rcu () ;

void
ip_set_type_unregister(struct ip_set_type *type)
{
 ip_set_type_lock();
 if (!find_set_type(type->name, type->family, type->revision_min)) {
  pr_warn("ip_set type %s, family %s with revision min %u not registered\n",
   type->name, family_name(type->family),
   type->revision_min);
  ip_set_type_unlock();
  return;
 }
 list_del_rcu(&type->list);
 pr_debug("type %s, family %s with revision min %u unregistered.\n",
   type->name, family_name(type->family), type->revision_min);
 ip_set_type_unlock();

 synchronize_rcu();
}
