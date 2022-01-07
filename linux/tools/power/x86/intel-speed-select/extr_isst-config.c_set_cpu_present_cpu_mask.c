
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;
typedef int DIR ;


 int CPU_SET_S (int,size_t,int ) ;
 int MAX_DIE_PER_PACKAGE ;
 int MAX_PACKAGE_COUNT ;
 size_t alloc_cpu_set (int *) ;
 int closedir (int *) ;
 int ** cpu_cnt ;
 int get_physical_die_id (int) ;
 int get_physical_package_id (int) ;
 int * opendir (char*) ;
 int present_cpumask ;
 size_t present_cpumask_size ;
 int snprintf (char*,int,char*,int) ;
 int topo_max_cpus ;

__attribute__((used)) static void set_cpu_present_cpu_mask(void)
{
 size_t size;
 DIR *dir;
 int i;

 size = alloc_cpu_set(&present_cpumask);
 present_cpumask_size = size;
 for (i = 0; i < topo_max_cpus; ++i) {
  char buffer[256];

  snprintf(buffer, sizeof(buffer),
    "/sys/devices/system/cpu/cpu%d", i);
  dir = opendir(buffer);
  if (dir) {
   int pkg_id, die_id;

   CPU_SET_S(i, size, present_cpumask);
   die_id = get_physical_die_id(i);
   if (die_id < 0)
    die_id = 0;

   pkg_id = get_physical_package_id(i);
   if (pkg_id < MAX_PACKAGE_COUNT &&
       die_id < MAX_DIE_PER_PACKAGE)
    cpu_cnt[pkg_id][die_id]++;
  }
  closedir(dir);
 }
}
