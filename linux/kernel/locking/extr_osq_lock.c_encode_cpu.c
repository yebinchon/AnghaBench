
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int encode_cpu(int cpu_nr)
{
 return cpu_nr + 1;
}
