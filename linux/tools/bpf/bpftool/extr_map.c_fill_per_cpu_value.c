
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_map_info {int value_size; int type; } ;


 unsigned int get_possible_cpus () ;
 int map_is_per_cpu (int ) ;
 int memcpy (void*,void*,int ) ;
 unsigned int round_up (int ,int) ;

__attribute__((used)) static void fill_per_cpu_value(struct bpf_map_info *info, void *value)
{
 unsigned int i, n, step;

 if (!map_is_per_cpu(info->type))
  return;

 n = get_possible_cpus();
 step = round_up(info->value_size, 8);
 for (i = 1; i < n; i++)
  memcpy(value + i * step, value, info->value_size);
}
