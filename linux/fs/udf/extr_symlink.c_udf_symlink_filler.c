
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {unsigned char* i_data; } ;
struct udf_inode_info {scalar_t__ i_alloc_type; int i_lenEAttr; int i_data_sem; TYPE_2__ i_ext; } ;
struct page {TYPE_1__* mapping; } ;
struct inode {scalar_t__ i_size; TYPE_3__* i_sb; } ;
struct file {int dummy; } ;
struct buffer_head {unsigned char* b_data; } ;
struct TYPE_7__ {scalar_t__ s_blocksize; } ;
struct TYPE_5__ {struct inode* host; } ;


 int EIO ;
 int ENAMETOOLONG ;
 scalar_t__ ICBTAG_FLAG_AD_IN_ICB ;
 int PAGE_SIZE ;
 int SetPageError (struct page*) ;
 int SetPageUptodate (struct page*) ;
 struct udf_inode_info* UDF_I (struct inode*) ;
 int brelse (struct buffer_head*) ;
 int down_read (int *) ;
 unsigned char* page_address (struct page*) ;
 struct buffer_head* sb_bread (TYPE_3__*,int ) ;
 int udf_block_map (struct inode*,int ) ;
 int udf_pc_to_char (TYPE_3__*,unsigned char*,scalar_t__,unsigned char*,int ) ;
 int unlock_page (struct page*) ;
 int up_read (int *) ;

__attribute__((used)) static int udf_symlink_filler(struct file *file, struct page *page)
{
 struct inode *inode = page->mapping->host;
 struct buffer_head *bh = ((void*)0);
 unsigned char *symlink;
 int err;
 unsigned char *p = page_address(page);
 struct udf_inode_info *iinfo;
 uint32_t pos;


 if (inode->i_size > inode->i_sb->s_blocksize) {
  err = -ENAMETOOLONG;
  goto out_unmap;
 }

 iinfo = UDF_I(inode);
 pos = udf_block_map(inode, 0);

 down_read(&iinfo->i_data_sem);
 if (iinfo->i_alloc_type == ICBTAG_FLAG_AD_IN_ICB) {
  symlink = iinfo->i_ext.i_data + iinfo->i_lenEAttr;
 } else {
  bh = sb_bread(inode->i_sb, pos);

  if (!bh) {
   err = -EIO;
   goto out_unlock_inode;
  }

  symlink = bh->b_data;
 }

 err = udf_pc_to_char(inode->i_sb, symlink, inode->i_size, p, PAGE_SIZE);
 brelse(bh);
 if (err)
  goto out_unlock_inode;

 up_read(&iinfo->i_data_sem);
 SetPageUptodate(page);
 unlock_page(page);
 return 0;

out_unlock_inode:
 up_read(&iinfo->i_data_sem);
 SetPageError(page);
out_unmap:
 unlock_page(page);
 return err;
}
