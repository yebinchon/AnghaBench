
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_relax () ;
 int emergency_restart () ;
 int kdb_printf (char*) ;

__attribute__((used)) static int kdb_reboot(int argc, const char **argv)
{
 emergency_restart();
 kdb_printf("Hmm, kdb_reboot did not reboot, spinning here\n");
 while (1)
  cpu_relax();

 return 0;
}
