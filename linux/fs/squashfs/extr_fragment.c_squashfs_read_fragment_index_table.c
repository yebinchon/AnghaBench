
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct super_block {int dummy; } ;
typedef int __le64 ;


 int EINVAL ;
 int * ERR_PTR (int ) ;
 int IS_ERR (int *) ;
 unsigned int SQUASHFS_FRAGMENT_INDEX_BYTES (unsigned int) ;
 int kfree (int *) ;
 scalar_t__ le64_to_cpu (int ) ;
 int * squashfs_read_table (struct super_block*,scalar_t__,unsigned int) ;

__le64 *squashfs_read_fragment_index_table(struct super_block *sb,
 u64 fragment_table_start, u64 next_table, unsigned int fragments)
{
 unsigned int length = SQUASHFS_FRAGMENT_INDEX_BYTES(fragments);
 __le64 *table;






 if (fragment_table_start + length > next_table)
  return ERR_PTR(-EINVAL);

 table = squashfs_read_table(sb, fragment_table_start, length);





 if (!IS_ERR(table) && le64_to_cpu(table[0]) >= fragment_table_start) {
  kfree(table);
  return ERR_PTR(-EINVAL);
 }

 return table;
}
