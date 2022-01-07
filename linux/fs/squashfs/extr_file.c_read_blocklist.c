
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long long u64 ;
struct inode {int i_sb; } ;
typedef int size ;
typedef int __le32 ;


 int TRACE (char*,int,int,long long,int,long long) ;
 int fill_meta_index (struct inode*,int,long long*,int*,long long*) ;
 long long read_indexes (int ,int,long long*,int*) ;
 int squashfs_block_size (int ) ;
 int squashfs_read_metadata (int ,int *,long long*,int*,int) ;

__attribute__((used)) static int read_blocklist(struct inode *inode, int index, u64 *block)
{
 u64 start;
 long long blks;
 int offset;
 __le32 size;
 int res = fill_meta_index(inode, index, &start, &offset, block);

 TRACE("read_blocklist: res %d, index %d, start 0x%llx, offset"
         " 0x%x, block 0x%llx\n", res, index, start, offset,
   *block);

 if (res < 0)
  return res;







 if (res < index) {
  blks = read_indexes(inode->i_sb, index - res, &start, &offset);
  if (blks < 0)
   return (int) blks;
  *block += blks;
 }




 res = squashfs_read_metadata(inode->i_sb, &size, &start, &offset,
   sizeof(size));
 if (res < 0)
  return res;
 return squashfs_block_size(size);
}
