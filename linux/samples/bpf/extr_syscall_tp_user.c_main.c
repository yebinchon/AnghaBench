
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int member_1; int member_0; } ;
typedef int filename ;


 int RLIMIT_MEMLOCK ;
 int RLIM_INFINITY ;
 int atoi (int ) ;
 int getopt (int,char**,char*) ;
 int optarg ;
 int setrlimit (int ,struct rlimit*) ;
 int snprintf (char*,int,char*,char*) ;
 int test (char*,int) ;
 int usage (char*) ;

int main(int argc, char **argv)
{
 struct rlimit r = {RLIM_INFINITY, RLIM_INFINITY};
 int opt, num_progs = 1;
 char filename[256];

 while ((opt = getopt(argc, argv, "i:h")) != -1) {
  switch (opt) {
  case 'i':
   num_progs = atoi(optarg);
   break;
  case 'h':
  default:
   usage(argv[0]);
   return 0;
  }
 }

 setrlimit(RLIMIT_MEMLOCK, &r);
 snprintf(filename, sizeof(filename), "%s_kern.o", argv[0]);

 return test(filename, num_progs);
}
