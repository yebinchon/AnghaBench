
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_stack_plugin {char const* sp_name; int sp_count; int sp_owner; } ;


 int EBUSY ;
 int ENOENT ;
 struct ocfs2_stack_plugin* active_stack ;
 char const* cluster_stack_name ;
 int ocfs2_stack_lock ;
 struct ocfs2_stack_plugin* ocfs2_stack_lookup (char const*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int try_module_get (int ) ;

__attribute__((used)) static int ocfs2_stack_driver_request(const char *stack_name,
          const char *plugin_name)
{
 int rc;
 struct ocfs2_stack_plugin *p;

 spin_lock(&ocfs2_stack_lock);





 if (strcmp(stack_name, cluster_stack_name)) {
  rc = -EBUSY;
  goto out;
 }

 if (active_stack) {




  if (!strcmp(active_stack->sp_name, plugin_name))
   rc = 0;
  else
   rc = -EBUSY;
  goto out;
 }

 p = ocfs2_stack_lookup(plugin_name);
 if (!p || !try_module_get(p->sp_owner)) {
  rc = -ENOENT;
  goto out;
 }

 active_stack = p;
 rc = 0;

out:

 if (!rc)
  active_stack->sp_count++;

 spin_unlock(&ocfs2_stack_lock);
 return rc;
}
