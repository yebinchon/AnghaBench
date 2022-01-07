
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {char* member_0; char member_3; int member_2; int const member_1; } ;


 int cpu_model ;
 int debug_flag ;
 int exit (int ) ;
 int fclose (int ) ;
 int fopen_or_exit (int ,char*) ;
 int fprintf (int ,char*) ;
 int free_cpu_set (int ) ;
 scalar_t__ geteuid () ;
 int getopt_long_only (int,char**,char*,struct option*,int*) ;
 int isst_fill_platform_info () ;
 int isst_print_platform_information () ;

 int optarg ;
 int optind ;
 int out_format_json ;
 int outf ;
 int parse_cpu_command (int ) ;
 int present_cpumask ;
 int print_version () ;
 int printf (char*,...) ;
 int process_command (int,char**) ;
 char* progname ;

 int set_cpu_present_cpu_mask () ;
 int set_cpu_target_cpu_mask () ;
 int set_max_cpu_num () ;
 int stderr ;
 int strncmp (int ,char*,int) ;
 int target_cpumask ;
 int update_cpu_model () ;
 int usage () ;

__attribute__((used)) static void cmdline(int argc, char **argv)
{
 int opt;
 int option_index = 0;
 int ret;

 static struct option long_options[] = {
  { "cpu", 128, 0, 'c' },
  { "debug", 129, 0, 'd' },
  { "format", 128, 0, 'f' },
  { "help", 129, 0, 'h' },
  { "info", 129, 0, 'i' },
  { "out", 128, 0, 'o' },
  { "version", 129, 0, 'v' },
  { 0, 0, 0, 0 }
 };

 progname = argv[0];
 while ((opt = getopt_long_only(argc, argv, "+c:df:hio:v", long_options,
           &option_index)) != -1) {
  switch (opt) {
  case 'c':
   parse_cpu_command(optarg);
   break;
  case 'd':
   debug_flag = 1;
   printf("Debug Mode ON\n");
   break;
  case 'f':
   if (!strncmp(optarg, "json", 4))
    out_format_json = 1;
   break;
  case 'h':
   usage();
   break;
  case 'i':
   isst_print_platform_information();
   break;
  case 'o':
   if (outf)
    fclose(outf);
   outf = fopen_or_exit(optarg, "w");
   break;
  case 'v':
   print_version();
   break;
  default:
   usage();
  }
 }

 if (geteuid() != 0) {
  fprintf(stderr, "Must run as root\n");
  exit(0);
 }

 if (optind > (argc - 2)) {
  fprintf(stderr, "Feature name and|or command not specified\n");
  exit(0);
 }
 update_cpu_model();
 printf("Intel(R) Speed Select Technology\n");
 printf("Executing on CPU model:%d[0x%x]\n", cpu_model, cpu_model);
 set_max_cpu_num();
 set_cpu_present_cpu_mask();
 set_cpu_target_cpu_mask();
 ret = isst_fill_platform_info();
 if (ret)
  goto out;

 process_command(argc, argv);
out:
 free_cpu_set(present_cpumask);
 free_cpu_set(target_cpumask);
}
