
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_table_set {int (* is_seen ) (struct ctl_table_set*) ;} ;
struct ctl_table_header {scalar_t__ unregistering; struct ctl_table_set* set; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct ctl_table_set*) ;
 int sysctl_lock ;

__attribute__((used)) static int sysctl_is_seen(struct ctl_table_header *p)
{
 struct ctl_table_set *set = p->set;
 int res;
 spin_lock(&sysctl_lock);
 if (p->unregistering)
  res = 0;
 else if (!set->is_seen)
  res = 1;
 else
  res = set->is_seen(set);
 spin_unlock(&sysctl_lock);
 return res;
}
