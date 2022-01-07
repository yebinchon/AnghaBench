
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int ns_blocksize; int ns_bdev; } ;
struct buffer_head {unsigned int b_size; void* b_data; scalar_t__ b_blocknr; } ;
typedef scalar_t__ sector_t ;


 int BUG_ON (int) ;
 struct buffer_head* __bread (int ,scalar_t__,int ) ;
 int brelse (struct buffer_head*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void *nilfs_read_summary_info(struct the_nilfs *nilfs,
         struct buffer_head **pbh,
         unsigned int *offset, unsigned int bytes)
{
 void *ptr;
 sector_t blocknr;

 BUG_ON((*pbh)->b_size < *offset);
 if (bytes > (*pbh)->b_size - *offset) {
  blocknr = (*pbh)->b_blocknr;
  brelse(*pbh);
  *pbh = __bread(nilfs->ns_bdev, blocknr + 1,
          nilfs->ns_blocksize);
  if (unlikely(!*pbh))
   return ((void*)0);
  *offset = 0;
 }
 ptr = (*pbh)->b_data + *offset;
 *offset += bytes;
 return ptr;
}
