
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int libbpf_num_possible_cpus () ;
 int p_err (char*,int ) ;
 int strerror (int) ;

unsigned int get_possible_cpus(void)
{
 int cpus = libbpf_num_possible_cpus();

 if (cpus < 0) {
  p_err("Can't get # of possible cpus: %s", strerror(-cpus));
  exit(-1);
 }
 return cpus;
}
