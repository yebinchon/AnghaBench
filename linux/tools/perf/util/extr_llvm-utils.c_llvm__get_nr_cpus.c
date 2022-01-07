
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int serr ;


 int STRERR_BUFSIZE ;
 int _SC_NPROCESSORS_CONF ;
 int errno ;
 int pr_err (char*,int ) ;
 int str_error_r (int ,char*,int) ;
 int sysconf (int ) ;

int llvm__get_nr_cpus(void)
{
 static int nr_cpus_avail = 0;
 char serr[STRERR_BUFSIZE];

 if (nr_cpus_avail > 0)
  return nr_cpus_avail;

 nr_cpus_avail = sysconf(_SC_NPROCESSORS_CONF);
 if (nr_cpus_avail <= 0) {
  pr_err(
"WARNING:\tunable to get available CPUs in this system: %s\n"
"        \tUse 128 instead.\n", str_error_r(errno, serr, sizeof(serr)));
  nr_cpus_avail = 128;
 }
 return nr_cpus_avail;
}
