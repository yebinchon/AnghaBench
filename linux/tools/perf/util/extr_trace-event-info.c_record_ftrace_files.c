
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracepoint_path {int dummy; } ;


 int ENOMEM ;
 int copy_event_system (char*,struct tracepoint_path*) ;
 char* get_events_file (char*) ;
 int pr_debug (char*) ;
 int put_tracing_file (char*) ;

__attribute__((used)) static int record_ftrace_files(struct tracepoint_path *tps)
{
 char *path;
 int ret;

 path = get_events_file("ftrace");
 if (!path) {
  pr_debug("can't get tracing/events/ftrace");
  return -ENOMEM;
 }

 ret = copy_event_system(path, tps);

 put_tracing_file(path);

 return ret;
}
