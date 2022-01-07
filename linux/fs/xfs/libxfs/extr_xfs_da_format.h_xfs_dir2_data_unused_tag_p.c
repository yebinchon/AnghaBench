
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_dir2_data_unused {int length; } ;
typedef int __be16 ;


 int be16_to_cpu (int ) ;

__attribute__((used)) static inline __be16 *
xfs_dir2_data_unused_tag_p(struct xfs_dir2_data_unused *dup)
{
 return (__be16 *)((char *)dup +
   be16_to_cpu(dup->length) - sizeof(__be16));
}
