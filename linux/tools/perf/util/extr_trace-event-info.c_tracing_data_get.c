
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracing_data {int temp; scalar_t__ size; int temp_file; } ;
struct tracepoint_path {int dummy; } ;
struct list_head {int dummy; } ;


 int O_RDWR ;
 int SEEK_CUR ;
 int close (int) ;
 int free (struct tracing_data*) ;
 struct tracepoint_path* get_tracepoints_path (struct list_head*) ;
 scalar_t__ lseek (int,int ,int ) ;
 struct tracing_data* malloc (int) ;
 int mkstemp (int ) ;
 int open (int ,int ) ;
 int output_fd ;
 int pr_debug (char*,...) ;
 int put_tracepoints_path (struct tracepoint_path*) ;
 int record_event_files (struct tracepoint_path*) ;
 int record_ftrace_files (struct tracepoint_path*) ;
 int record_ftrace_printk () ;
 int record_header_files () ;
 int record_proc_kallsyms () ;
 int record_saved_cmdline () ;
 int snprintf (int ,int,char*) ;
 int tracing_data_header () ;
 int zfree (struct tracing_data**) ;

struct tracing_data *tracing_data_get(struct list_head *pattrs,
          int fd, bool temp)
{
 struct tracepoint_path *tps;
 struct tracing_data *tdata;
 int err;

 output_fd = fd;

 tps = get_tracepoints_path(pattrs);
 if (!tps)
  return ((void*)0);

 tdata = malloc(sizeof(*tdata));
 if (!tdata)
  return ((void*)0);

 tdata->temp = temp;
 tdata->size = 0;

 if (temp) {
  int temp_fd;

  snprintf(tdata->temp_file, sizeof(tdata->temp_file),
    "/tmp/perf-XXXXXX");
  if (!mkstemp(tdata->temp_file)) {
   pr_debug("Can't make temp file");
   free(tdata);
   return ((void*)0);
  }

  temp_fd = open(tdata->temp_file, O_RDWR);
  if (temp_fd < 0) {
   pr_debug("Can't read '%s'", tdata->temp_file);
   free(tdata);
   return ((void*)0);
  }





  output_fd = temp_fd;
 }

 err = tracing_data_header();
 if (err)
  goto out;
 err = record_header_files();
 if (err)
  goto out;
 err = record_ftrace_files(tps);
 if (err)
  goto out;
 err = record_event_files(tps);
 if (err)
  goto out;
 err = record_proc_kallsyms();
 if (err)
  goto out;
 err = record_ftrace_printk();
 if (err)
  goto out;
 err = record_saved_cmdline();

out:




 if (temp) {
  tdata->size = lseek(output_fd, 0, SEEK_CUR);
  close(output_fd);
  output_fd = fd;
 }

 if (err)
  zfree(&tdata);

 put_tracepoints_path(tps);
 return tdata;
}
