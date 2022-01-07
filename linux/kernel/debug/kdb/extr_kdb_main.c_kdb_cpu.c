
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enter_kgdb; } ;


 unsigned long CONFIG_NR_CPUS ;
 int KDB_ARGCOUNT ;
 int KDB_BADCPUNUM ;
 int KDB_CMD_CPU ;
 unsigned long dbg_switch_cpu ;
 int kdb_cpu_status () ;
 int kdbgetularg (char const*,unsigned long*) ;
 TYPE_1__* kgdb_info ;

__attribute__((used)) static int kdb_cpu(int argc, const char **argv)
{
 unsigned long cpunum;
 int diag;

 if (argc == 0) {
  kdb_cpu_status();
  return 0;
 }

 if (argc != 1)
  return KDB_ARGCOUNT;

 diag = kdbgetularg(argv[1], &cpunum);
 if (diag)
  return diag;




 if ((cpunum >= CONFIG_NR_CPUS) || !kgdb_info[cpunum].enter_kgdb)
  return KDB_BADCPUNUM;

 dbg_switch_cpu = cpunum;




 return KDB_CMD_CPU;
}
