
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {struct dentry* event_dir; } ;
struct dentry {int dummy; } ;


 int ENOMEM ;
 int ftrace_set_event_fops ;
 int ftrace_set_event_pid_fops ;
 int ftrace_show_header_fops ;
 int ftrace_tr_enable_fops ;
 int pr_warn (char*) ;
 struct trace_array* ring_buffer_print_entry_header ;
 struct trace_array* ring_buffer_print_page_header ;
 struct dentry* trace_create_file (char*,int,struct dentry*,struct trace_array*,int *) ;
 struct dentry* tracefs_create_dir (char*,struct dentry*) ;
 struct dentry* tracefs_create_file (char*,int,struct dentry*,struct trace_array*,int *) ;

__attribute__((used)) static int
create_event_toplevel_files(struct dentry *parent, struct trace_array *tr)
{
 struct dentry *d_events;
 struct dentry *entry;

 entry = tracefs_create_file("set_event", 0644, parent,
        tr, &ftrace_set_event_fops);
 if (!entry) {
  pr_warn("Could not create tracefs 'set_event' entry\n");
  return -ENOMEM;
 }

 d_events = tracefs_create_dir("events", parent);
 if (!d_events) {
  pr_warn("Could not create tracefs 'events' directory\n");
  return -ENOMEM;
 }

 entry = trace_create_file("enable", 0644, d_events,
      tr, &ftrace_tr_enable_fops);
 if (!entry) {
  pr_warn("Could not create tracefs 'enable' entry\n");
  return -ENOMEM;
 }



 entry = tracefs_create_file("set_event_pid", 0644, parent,
        tr, &ftrace_set_event_pid_fops);
 if (!entry)
  pr_warn("Could not create tracefs 'set_event_pid' entry\n");


 entry = trace_create_file("header_page", 0444, d_events,
      ring_buffer_print_page_header,
      &ftrace_show_header_fops);
 if (!entry)
  pr_warn("Could not create tracefs 'header_page' entry\n");

 entry = trace_create_file("header_event", 0444, d_events,
      ring_buffer_print_entry_header,
      &ftrace_show_header_fops);
 if (!entry)
  pr_warn("Could not create tracefs 'header_event' entry\n");

 tr->event_dir = d_events;

 return 0;
}
