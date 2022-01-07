
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int parse_int_file (int ,char*,int) ;

int get_physical_die_id(int cpu)
{
 int ret;

 ret = parse_int_file(0, "/sys/devices/system/cpu/cpu%d/topology/die_id",
        cpu);
 if (ret < 0)
  ret = 0;

 return ret;
}
