
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_bmap {int dummy; } ;
typedef int __u64 ;


 int le64_to_cpu (int ) ;
 int * nilfs_direct_dptrs (struct nilfs_bmap const*) ;

__attribute__((used)) static inline __u64
nilfs_direct_get_ptr(const struct nilfs_bmap *direct, __u64 key)
{
 return le64_to_cpu(*(nilfs_direct_dptrs(direct) + key));
}
