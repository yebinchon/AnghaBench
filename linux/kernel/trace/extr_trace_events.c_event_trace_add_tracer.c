
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;
struct dentry {int dummy; } ;


 int __trace_add_event_dirs (struct trace_array*) ;
 int create_event_toplevel_files (struct dentry*,struct trace_array*) ;
 int down_write (int *) ;
 int event_mutex ;
 int lockdep_assert_held (int *) ;
 int trace_event_sem ;
 int up_write (int *) ;

int event_trace_add_tracer(struct dentry *parent, struct trace_array *tr)
{
 int ret;

 lockdep_assert_held(&event_mutex);

 ret = create_event_toplevel_files(parent, tr);
 if (ret)
  goto out;

 down_write(&trace_event_sem);
 __trace_add_event_dirs(tr);
 up_write(&trace_event_sem);

 out:
 return ret;
}
