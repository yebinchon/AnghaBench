
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bpf_file ;


 int SIGINT ;
 int SIGTERM ;
 unsigned long ULONG_MAX ;
 int dump_all_counts () ;
 int dump_exit ;
 int fprintf (int ,char*,char*) ;
 int getopt_long (int,char**,char*,int ,int*) ;
 scalar_t__ load_bpf_file (char*) ;
 int long_options ;
 char* optarg ;
 int signal (int ,int ) ;
 int sleep (unsigned long) ;
 int snprintf (char*,int,char*,char*) ;
 int stderr ;
 unsigned long strtoul (char*,int *,int ) ;
 int usage (char*) ;

int main(int argc, char **argv)
{
 unsigned long delay = 5;
 int longindex = 0;
 int opt;
 char bpf_file[256];




 snprintf(bpf_file, sizeof(bpf_file), "%s_kern.o", argv[0]);


 signal(SIGINT, dump_exit);
 signal(SIGTERM, dump_exit);

 while ((opt = getopt_long(argc, argv, "hd:rSw",
      long_options, &longindex)) != -1) {
  switch (opt) {
  case 'd':
   delay = strtoul(optarg, ((void*)0), 0);
   if (delay == ULONG_MAX || delay < 0 ||
       delay > 1000000) {
    fprintf(stderr, "ERROR: invalid delay : %s\n",
     optarg);
    usage(argv[0]);
    return 1;
   }
   break;
  default:
  case 'h':
   usage(argv[0]);
   return 1;
  }
 }

 if (load_bpf_file(bpf_file)) {
  fprintf(stderr, "ERROR: failed to load eBPF from file : %s\n",
   bpf_file);
  return 1;
 }

 while (1) {
  sleep(delay);
  dump_all_counts();
 }

 return 0;
}
