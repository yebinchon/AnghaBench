
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params {int serialize_startup; int data_reads; int data_writes; int data_backwards; int data_rand_walk; int nr_loops; int init_random; char* mb_global_str; int nr_proc; int nr_threads; int nr_secs; int run_all; } ;


 int memset (struct params*,int ,int) ;
 int printf (char*,...) ;

__attribute__((used)) static void init_params(struct params *p, const char *name, int argc, const char **argv)
{
 int i;

 printf("\n # Running %s \"perf bench numa", name);

 for (i = 0; i < argc; i++)
  printf(" %s", argv[i]);

 printf("\"\n");

 memset(p, 0, sizeof(*p));



 p->serialize_startup = 1;
 p->data_reads = 1;
 p->data_writes = 1;
 p->data_backwards = 1;
 p->data_rand_walk = 1;
 p->nr_loops = -1;
 p->init_random = 1;
 p->mb_global_str = "1";
 p->nr_proc = 1;
 p->nr_threads = 1;
 p->nr_secs = 5;
 p->run_all = argc == 1;
}
