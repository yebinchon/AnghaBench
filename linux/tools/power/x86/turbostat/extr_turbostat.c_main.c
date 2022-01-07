
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cmdline (int,char**) ;
 scalar_t__ dump_only ;
 int flush_output_stdout () ;
 int fork_it (char**) ;
 int get_and_dump_counters () ;
 scalar_t__ list_header_only ;
 int optind ;
 int outf ;
 int print_header (char*) ;
 int print_version () ;
 int probe_sysfs () ;
 int quiet ;
 int stderr ;
 int turbostat_init () ;
 int turbostat_loop () ;

int main(int argc, char **argv)
{
 outf = stderr;
 cmdline(argc, argv);

 if (!quiet)
  print_version();

 probe_sysfs();

 turbostat_init();


 if (dump_only)
  return get_and_dump_counters();


 if (list_header_only) {
  print_header(",");
  flush_output_stdout();
  return 0;
 }




 if (argc - optind)
  return fork_it(argv + optind);
 else
  turbostat_loop();

 return 0;
}
