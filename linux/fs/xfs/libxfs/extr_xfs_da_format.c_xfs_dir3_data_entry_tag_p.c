
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_dir2_data_entry {int namelen; } ;
typedef int __be16 ;


 int xfs_dir3_data_entsize (int ) ;

__attribute__((used)) static __be16 *
xfs_dir3_data_entry_tag_p(
 struct xfs_dir2_data_entry *dep)
{
 return (__be16 *)((char *)dep +
  xfs_dir3_data_entsize(dep->namelen) - sizeof(__be16));
}
