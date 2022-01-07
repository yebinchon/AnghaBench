
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;
struct aa_ns {int sub_ns; int lock; } ;


 int AA_BUG (int) ;
 int EEXIST ;
 struct aa_ns* ERR_PTR (int ) ;
 struct aa_ns* __aa_create_ns (struct aa_ns*,char const*,struct dentry*) ;
 int __aa_find_ns (int *,char const*) ;
 struct aa_ns* aa_get_ns (int ) ;
 int mutex_is_locked (int *) ;

struct aa_ns *__aa_find_or_create_ns(struct aa_ns *parent, const char *name,
         struct dentry *dir)
{
 struct aa_ns *ns;

 AA_BUG(!mutex_is_locked(&parent->lock));



 ns = aa_get_ns(__aa_find_ns(&parent->sub_ns, name));
 if (!ns)
  ns = __aa_create_ns(parent, name, dir);
 else
  ns = ERR_PTR(-EEXIST);


 return ns;
}
