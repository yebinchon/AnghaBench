
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_map_def {int value_size; } ;


 int _SC_NPROCESSORS_CONF ;
 scalar_t__ bpf_map_def__is_per_cpu (struct bpf_map_def const*) ;
 void* malloc (int) ;
 int round_up (int,int) ;
 int sysconf (int ) ;

__attribute__((used)) static void *bpf_map_def__alloc_value(const struct bpf_map_def *def)
{
 if (bpf_map_def__is_per_cpu(def))
  return malloc(round_up(def->value_size, 8) * sysconf(_SC_NPROCESSORS_CONF));

 return malloc(def->value_size);
}
