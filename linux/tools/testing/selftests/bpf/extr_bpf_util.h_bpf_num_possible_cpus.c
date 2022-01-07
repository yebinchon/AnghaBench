
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int libbpf_num_possible_cpus () ;
 int printf (char*,char*) ;
 char* strerror (int) ;

__attribute__((used)) static inline unsigned int bpf_num_possible_cpus(void)
{
 int possible_cpus = libbpf_num_possible_cpus();

 if (possible_cpus < 0) {
  printf("Failed to get # of possible cpus: '%s'!\n",
         strerror(-possible_cpus));
  exit(1);
 }
 return possible_cpus;
}
