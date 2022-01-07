
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_palloc_req {struct buffer_head* pr_bitmap_bh; struct buffer_head* pr_desc_bh; int pr_entry_nr; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;


 int brelse (struct buffer_head*) ;
 int nilfs_palloc_get_bitmap_block (struct inode*,unsigned long,int,struct buffer_head**) ;
 int nilfs_palloc_get_desc_block (struct inode*,unsigned long,int,struct buffer_head**) ;
 unsigned long nilfs_palloc_group (struct inode*,int ,unsigned long*) ;

int nilfs_palloc_prepare_free_entry(struct inode *inode,
        struct nilfs_palloc_req *req)
{
 struct buffer_head *desc_bh, *bitmap_bh;
 unsigned long group, group_offset;
 int ret;

 group = nilfs_palloc_group(inode, req->pr_entry_nr, &group_offset);
 ret = nilfs_palloc_get_desc_block(inode, group, 1, &desc_bh);
 if (ret < 0)
  return ret;
 ret = nilfs_palloc_get_bitmap_block(inode, group, 1, &bitmap_bh);
 if (ret < 0) {
  brelse(desc_bh);
  return ret;
 }

 req->pr_desc_bh = desc_bh;
 req->pr_bitmap_bh = bitmap_bh;
 return 0;
}
