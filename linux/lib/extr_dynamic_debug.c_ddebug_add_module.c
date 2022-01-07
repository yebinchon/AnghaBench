
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ddebug_table {char const* mod_name; unsigned int num_ddebugs; int link; struct _ddebug* ddebugs; } ;
struct _ddebug {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int ddebug_lock ;
 int ddebug_tables ;
 struct ddebug_table* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,char const*) ;
 int vpr_info (char*,unsigned int,char const*) ;

int ddebug_add_module(struct _ddebug *tab, unsigned int n,
        const char *name)
{
 struct ddebug_table *dt;

 dt = kzalloc(sizeof(*dt), GFP_KERNEL);
 if (dt == ((void*)0)) {
  pr_err("error adding module: %s\n", name);
  return -ENOMEM;
 }






 dt->mod_name = name;
 dt->num_ddebugs = n;
 dt->ddebugs = tab;

 mutex_lock(&ddebug_lock);
 list_add_tail(&dt->link, &ddebug_tables);
 mutex_unlock(&ddebug_lock);

 vpr_info("%u debug prints in module %s\n", n, dt->mod_name);
 return 0;
}
