
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {scalar_t__ dir; } ;
struct dentry {int dummy; } ;


 int CONFIG_DEBUG_FS ;
 int ENODEV ;
 struct dentry* ERR_PTR (int ) ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ debugfs_create_automount (char*,int *,int ,int *) ;
 int debugfs_initialized () ;
 struct trace_array global_trace ;
 int trace_automount ;
 int tracefs_initialized () ;

struct dentry *tracing_init_dentry(void)
{
 struct trace_array *tr = &global_trace;


 if (tr->dir)
  return ((void*)0);

 if (WARN_ON(!tracefs_initialized()) ||
  (IS_ENABLED(CONFIG_DEBUG_FS) &&
   WARN_ON(!debugfs_initialized())))
  return ERR_PTR(-ENODEV);







 tr->dir = debugfs_create_automount("tracing", ((void*)0),
        trace_automount, ((void*)0));

 return ((void*)0);
}
