
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int parse_int_file (int ,char*,int) ;

int get_physical_package_id(int cpu)
{
 return parse_int_file(
  0, "/sys/devices/system/cpu/cpu%d/topology/physical_package_id",
  cpu);
}
