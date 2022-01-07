
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {char* member_0; int member_3; int * member_2; int member_1; } ;


 int Usage () ;
 double atoi (int ) ;
 int debugFlag ;
 double dur ;
 int edt_flag ;
 int fprintf (int ,char*,char) ;
 int getopt_long (int,char**,char*,struct option*,int *) ;
 int loopback_flag ;
 double minRate ;
 int no_cn_flag ;
 int optarg ;
 int optind ;
 char optopt ;
 int printf (char*,char*) ;
 double rate ;
 int run_bpf_prog (char*,int) ;
 int stats_flag ;
 int stderr ;
 int work_conserving_flag ;

int main(int argc, char **argv)
{
 char *prog = "hbm_out_kern.o";
 int k;
 int cg_id = 1;
 char *optstring = "iodln:r:st:wh";
 struct option loptions[] = {
  {"no_cn", 0, ((void*)0), 1},
  {"edt", 0, ((void*)0), 2},
  {((void*)0), 0, ((void*)0), 0}
 };

 while ((k = getopt_long(argc, argv, optstring, loptions, ((void*)0))) != -1) {
  switch (k) {
  case 1:
   no_cn_flag = 1;
   break;
  case 2:
   prog = "hbm_edt_kern.o";
   edt_flag = 1;
   break;
  case'o':
   break;
  case 'd':
   debugFlag = 1;
   break;
  case 'l':
   loopback_flag = 1;
   break;
  case 'n':
   cg_id = atoi(optarg);
   break;
  case 'r':
   minRate = atoi(optarg) * 1.024;
   rate = minRate;
   break;
  case 's':
   stats_flag = 1;
   break;
  case 't':
   dur = atoi(optarg);
   break;
  case 'w':
   work_conserving_flag = 1;
   break;
  case '?':
   if (optopt == 'n' || optopt == 'r' || optopt == 't')
    fprintf(stderr,
     "Option -%c requires an argument.\n\n",
     optopt);
  case 'h':

  default:
   Usage();
   return 0;
  }
 }

 if (optind < argc)
  prog = argv[optind];
 printf("HBM prog: %s\n", prog != ((void*)0) ? prog : "NULL");

 return run_bpf_prog(prog, cg_id);
}
