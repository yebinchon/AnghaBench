
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int __u64 ;


 scalar_t__ bh_submit_read (struct buffer_head*) ;
 int bh_uptodate_or_lock (struct buffer_head*) ;
 int brelse (struct buffer_head*) ;
 struct buffer_head* sb_getblk (struct super_block*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct buffer_head *ext4_get_bitmap(struct super_block *sb, __u64 block)
{
 struct buffer_head *bh = sb_getblk(sb, block);
 if (unlikely(!bh))
  return ((void*)0);
 if (!bh_uptodate_or_lock(bh)) {
  if (bh_submit_read(bh) < 0) {
   brelse(bh);
   return ((void*)0);
  }
 }

 return bh;
}
