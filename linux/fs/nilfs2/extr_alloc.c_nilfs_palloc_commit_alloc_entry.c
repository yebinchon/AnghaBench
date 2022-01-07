
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_palloc_req {int pr_desc_bh; int pr_bitmap_bh; } ;
struct inode {int dummy; } ;


 int brelse (int ) ;
 int mark_buffer_dirty (int ) ;
 int nilfs_mdt_mark_dirty (struct inode*) ;

void nilfs_palloc_commit_alloc_entry(struct inode *inode,
         struct nilfs_palloc_req *req)
{
 mark_buffer_dirty(req->pr_bitmap_bh);
 mark_buffer_dirty(req->pr_desc_bh);
 nilfs_mdt_mark_dirty(inode);

 brelse(req->pr_bitmap_bh);
 brelse(req->pr_desc_bh);
}
