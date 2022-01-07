
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct super_block {int dummy; } ;
typedef int __le64 ;


 int ENOTSUPP ;
 int ERROR (char*) ;
 int * ERR_PTR (int ) ;

__attribute__((used)) static inline __le64 *squashfs_read_xattr_id_table(struct super_block *sb,
  u64 start, u64 *xattr_table_start, int *xattr_ids)
{
 ERROR("Xattrs in filesystem, these will be ignored\n");
 *xattr_table_start = start;
 return ERR_PTR(-ENOTSUPP);
}
