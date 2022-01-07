
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_event {struct tep_handle* pevent; } ;
struct tep_handle {int dummy; } ;
typedef int ssize_t ;


 int BUFSIZ ;
 int TEP_NSEC_OUTPUT ;
 double atof (char*) ;
 int bigendian () ;
 scalar_t__ do_read (char*,int) ;
 int free (char*) ;
 int input_fd ;
 scalar_t__ memcmp (char*,char*,int) ;
 int pr_debug (char*) ;
 int printf (char*,char*) ;
 int read4 (struct tep_handle*) ;
 int read_event_files (struct tep_handle*) ;
 int read_ftrace_files (struct tep_handle*) ;
 int read_ftrace_printk (struct tep_handle*) ;
 int read_header_files (struct tep_handle*) ;
 int read_proc_kallsyms (struct tep_handle*) ;
 int read_saved_cmdline (struct tep_handle*) ;
 char* read_string () ;
 int repipe ;
 int tep_print_funcs (struct tep_handle*) ;
 int tep_print_printk (struct tep_handle*) ;
 int tep_set_file_bigendian (struct tep_handle*,int) ;
 int tep_set_flag (struct tep_handle*,int ) ;
 int tep_set_local_bigendian (struct tep_handle*,int) ;
 int tep_set_long_size (struct tep_handle*,int) ;
 int tep_set_page_size (struct tep_handle*,int) ;
 int trace_data_size ;
 int trace_event__cleanup (struct trace_event*) ;
 scalar_t__ trace_event__init (struct trace_event*) ;

ssize_t trace_report(int fd, struct trace_event *tevent, bool __repipe)
{
 char buf[BUFSIZ];
 char test[] = { 23, 8, 68 };
 char *version;
 int show_version = 0;
 int show_funcs = 0;
 int show_printk = 0;
 ssize_t size = -1;
 int file_bigendian;
 int host_bigendian;
 int file_long_size;
 int file_page_size;
 struct tep_handle *pevent = ((void*)0);
 int err;

 repipe = __repipe;
 input_fd = fd;

 if (do_read(buf, 3) < 0)
  return -1;
 if (memcmp(buf, test, 3) != 0) {
  pr_debug("no trace data in the file");
  return -1;
 }

 if (do_read(buf, 7) < 0)
  return -1;
 if (memcmp(buf, "tracing", 7) != 0) {
  pr_debug("not a trace file (missing 'tracing' tag)");
  return -1;
 }

 version = read_string();
 if (version == ((void*)0))
  return -1;
 if (show_version)
  printf("version = %s\n", version);

 if (do_read(buf, 1) < 0) {
  free(version);
  return -1;
 }
 file_bigendian = buf[0];
 host_bigendian = bigendian();

 if (trace_event__init(tevent)) {
  pr_debug("trace_event__init failed");
  goto out;
 }

 pevent = tevent->pevent;

 tep_set_flag(pevent, TEP_NSEC_OUTPUT);
 tep_set_file_bigendian(pevent, file_bigendian);
 tep_set_local_bigendian(pevent, host_bigendian);

 if (do_read(buf, 1) < 0)
  goto out;
 file_long_size = buf[0];

 file_page_size = read4(pevent);
 if (!file_page_size)
  goto out;

 tep_set_long_size(pevent, file_long_size);
 tep_set_page_size(pevent, file_page_size);

 err = read_header_files(pevent);
 if (err)
  goto out;
 err = read_ftrace_files(pevent);
 if (err)
  goto out;
 err = read_event_files(pevent);
 if (err)
  goto out;
 err = read_proc_kallsyms(pevent);
 if (err)
  goto out;
 err = read_ftrace_printk(pevent);
 if (err)
  goto out;
 if (atof(version) >= 0.6) {
  err = read_saved_cmdline(pevent);
  if (err)
   goto out;
 }

 size = trace_data_size;
 repipe = 0;

 if (show_funcs) {
  tep_print_funcs(pevent);
 } else if (show_printk) {
  tep_print_printk(pevent);
 }

 pevent = ((void*)0);

out:
 if (pevent)
  trace_event__cleanup(tevent);
 free(version);
 return size;
}
