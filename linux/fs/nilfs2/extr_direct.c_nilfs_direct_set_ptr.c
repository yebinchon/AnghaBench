
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_bmap {int dummy; } ;
typedef int __u64 ;


 int cpu_to_le64 (int) ;
 int * nilfs_direct_dptrs (struct nilfs_bmap*) ;

__attribute__((used)) static inline void nilfs_direct_set_ptr(struct nilfs_bmap *direct,
     __u64 key, __u64 ptr)
{
 *(nilfs_direct_dptrs(direct) + key) = cpu_to_le64(ptr);
}
