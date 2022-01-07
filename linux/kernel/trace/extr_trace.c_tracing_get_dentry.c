
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int flags; struct dentry* dir; } ;
struct dentry {int dummy; } ;


 int ENODEV ;
 struct dentry* ERR_PTR (int ) ;
 int TRACE_ARRAY_FL_GLOBAL ;
 scalar_t__ WARN_ON (int) ;

__attribute__((used)) static struct dentry *tracing_get_dentry(struct trace_array *tr)
{
 if (WARN_ON(!tr->dir))
  return ERR_PTR(-ENODEV);


 if (tr->flags & TRACE_ARRAY_FL_GLOBAL)
  return ((void*)0);


 return tr->dir;
}
