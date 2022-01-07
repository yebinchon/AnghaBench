
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map {int dummy; } ;


 int __map__is_bpf_prog (struct map const*) ;
 int __map__is_extra_kernel_map (struct map const*) ;
 int __map__is_kernel (struct map const*) ;

__attribute__((used)) static inline bool __map__is_kmodule(const struct map *map)
{
 return !__map__is_kernel(map) && !__map__is_extra_kernel_map(map) &&
        !__map__is_bpf_prog(map);
}
