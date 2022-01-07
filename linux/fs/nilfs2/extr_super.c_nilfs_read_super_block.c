
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
struct super_block {int dummy; } ;
struct nilfs_super_block {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;


 unsigned long do_div (unsigned long long,int) ;
 struct buffer_head* sb_bread (struct super_block*,unsigned long long) ;

struct nilfs_super_block *nilfs_read_super_block(struct super_block *sb,
       u64 pos, int blocksize,
       struct buffer_head **pbh)
{
 unsigned long long sb_index = pos;
 unsigned long offset;

 offset = do_div(sb_index, blocksize);
 *pbh = sb_bread(sb, sb_index);
 if (!*pbh)
  return ((void*)0);
 return (struct nilfs_super_block *)((char *)(*pbh)->b_data + offset);
}
