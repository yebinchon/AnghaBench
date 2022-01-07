
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_ns {int lock; int sub_ns; int level; } ;


 struct aa_ns* __aa_create_ns (struct aa_ns*,char const*,int *) ;
 int __aa_find_ns (int *,char const*) ;
 struct aa_ns* aa_get_ns (int ) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;

struct aa_ns *aa_prepare_ns(struct aa_ns *parent, const char *name)
{
 struct aa_ns *ns;

 mutex_lock_nested(&parent->lock, parent->level);


 ns = aa_get_ns(__aa_find_ns(&parent->sub_ns, name));
 if (!ns)
  ns = __aa_create_ns(parent, name, ((void*)0));
 mutex_unlock(&parent->lock);


 return ns;
}
