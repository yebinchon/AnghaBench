
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_APPEND ;
 int O_RDONLY ;
 int O_RDWR ;
 int PATH_MAX ;
 int e_snprintf (char*,int,char*,int ,char const*) ;
 int errno ;
 int open (char*,int,int ) ;
 int pr_debug (char*,char*,int) ;
 int probe_event_dry_run ;
 int tracing_path_mount () ;

int open_trace_file(const char *trace_file, bool readwrite)
{
 char buf[PATH_MAX];
 int ret;

 ret = e_snprintf(buf, PATH_MAX, "%s/%s", tracing_path_mount(), trace_file);
 if (ret >= 0) {
  pr_debug("Opening %s write=%d\n", buf, readwrite);
  if (readwrite && !probe_event_dry_run)
   ret = open(buf, O_RDWR | O_APPEND, 0);
  else
   ret = open(buf, O_RDONLY, 0);

  if (ret < 0)
   ret = -errno;
 }
 return ret;
}
