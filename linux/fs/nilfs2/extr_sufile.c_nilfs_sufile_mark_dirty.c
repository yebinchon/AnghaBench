
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int __u64 ;


 int brelse (struct buffer_head*) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 int nilfs_mdt_mark_dirty (struct inode*) ;
 int nilfs_sufile_get_segment_usage_block (struct inode*,int ,int ,struct buffer_head**) ;

int nilfs_sufile_mark_dirty(struct inode *sufile, __u64 segnum)
{
 struct buffer_head *bh;
 int ret;

 ret = nilfs_sufile_get_segment_usage_block(sufile, segnum, 0, &bh);
 if (!ret) {
  mark_buffer_dirty(bh);
  nilfs_mdt_mark_dirty(sufile);
  brelse(bh);
 }
 return ret;
}
