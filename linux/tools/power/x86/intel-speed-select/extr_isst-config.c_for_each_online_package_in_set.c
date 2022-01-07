
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int max_packages ;


 int CPU_ISSET_S (int,int ,int ) ;
 int MAX_PACKAGE_COUNT ;
 int get_physical_die_id (int) ;
 int get_physical_package_id (int) ;
 int memset (int*,int,int) ;
 int parse_int_file (int,char*,int) ;
 int present_cpumask ;
 int present_cpumask_size ;
 int topo_max_cpus ;

__attribute__((used)) static void for_each_online_package_in_set(void (*callback)(int, void *, void *,
           void *, void *),
        void *arg1, void *arg2, void *arg3,
        void *arg4)
{
 int max_packages[MAX_PACKAGE_COUNT * MAX_PACKAGE_COUNT];
 int pkg_index = 0, i;

 memset(max_packages, 0xff, sizeof(max_packages));
 for (i = 0; i < topo_max_cpus; ++i) {
  int j, online, pkg_id, die_id = 0, skip = 0;

  if (!CPU_ISSET_S(i, present_cpumask_size, present_cpumask))
   continue;
  if (i)
   online = parse_int_file(
    1, "/sys/devices/system/cpu/cpu%d/online", i);
  else
   online =
    1;

  die_id = get_physical_die_id(i);
  if (die_id < 0)
   die_id = 0;
  pkg_id = get_physical_package_id(i);

  pkg_id = (MAX_PACKAGE_COUNT * pkg_id + die_id);

  for (j = 0; j < pkg_index; ++j) {
   if (max_packages[j] == pkg_id) {
    skip = 1;
    break;
   }
  }

  if (!skip && online && callback) {
   callback(i, arg1, arg2, arg3, arg4);
   max_packages[pkg_index++] = pkg_id;
  }
 }
}
