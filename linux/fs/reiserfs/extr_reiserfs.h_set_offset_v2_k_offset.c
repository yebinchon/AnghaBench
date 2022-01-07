
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct offset_v2 {int v; } ;
typedef unsigned long long loff_t ;


 int cpu_to_le64 (unsigned long long) ;

__attribute__((used)) static inline void set_offset_v2_k_offset(struct offset_v2 *v2, loff_t offset)
{
 offset &= (~0ULL >> 4);
 v2->v = (v2->v & cpu_to_le64(15ULL << 60)) | cpu_to_le64(offset);
}
