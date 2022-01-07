
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct offset_v2 {int v; } ;
typedef unsigned long long loff_t ;


 unsigned long long le64_to_cpu (int ) ;

__attribute__((used)) static inline loff_t offset_v2_k_offset(const struct offset_v2 *v2)
{
 return le64_to_cpu(v2->v) & (~0ULL >> 4);
}
