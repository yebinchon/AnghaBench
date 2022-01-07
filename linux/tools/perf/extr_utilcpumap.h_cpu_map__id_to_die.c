
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int cpu_map__id_to_die(int id)
{
 return (id >> 16) & 0xff;
}
