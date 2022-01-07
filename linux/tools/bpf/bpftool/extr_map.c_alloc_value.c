
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_map_info {int value_size; int type; } ;


 int get_possible_cpus () ;
 void* malloc (int) ;
 scalar_t__ map_is_per_cpu (int ) ;
 int round_up (int,int) ;

__attribute__((used)) static void *alloc_value(struct bpf_map_info *info)
{
 if (map_is_per_cpu(info->type))
  return malloc(round_up(info->value_size, 8) *
         get_possible_cpus());
 else
  return malloc(info->value_size);
}
