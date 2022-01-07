
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
 unsigned int SQUASHFS_ID_BLOCK_BYTES (unsigned short) ;
 int TRACE (char*,unsigned int) ;
 int kfree (int *) ;
 scalar_t__ le64_to_cpu (int ) ;
 int * squashfs_read_table (struct super_block*,scalar_t__,unsigned int) ;

__le64 *squashfs_read_id_index_table(struct super_block *sb,
  u64 id_table_start, u64 next_table, unsigned short no_ids)
{
 unsigned int length = SQUASHFS_ID_BLOCK_BYTES(no_ids);
 __le64 *table;

 TRACE("In read_id_index_table, length %d\n", length);




 if (no_ids == 0)
  return ERR_PTR(-EINVAL);






 if (id_table_start + length > next_table)
  return ERR_PTR(-EINVAL);

 table = squashfs_read_table(sb, id_table_start, length);





 if (!IS_ERR(table) && le64_to_cpu(table[0]) >= id_table_start) {
  kfree(table);
  return ERR_PTR(-EINVAL);
 }

 return table;
}
