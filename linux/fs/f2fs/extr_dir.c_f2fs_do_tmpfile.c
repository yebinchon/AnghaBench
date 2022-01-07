
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int i_sem; } ;


 TYPE_1__* F2FS_I (struct inode*) ;
 int F2FS_I_SB (struct inode*) ;
 int FI_NEW_INODE ;
 scalar_t__ IS_ERR (struct page*) ;
 int PTR_ERR (struct page*) ;
 int REQ_TIME ;
 int clear_inode_flag (struct inode*,int ) ;
 int down_write (int *) ;
 struct page* f2fs_init_inode_metadata (struct inode*,struct inode*,int *,int *,int *) ;
 int f2fs_put_page (struct page*,int) ;
 int f2fs_update_time (int ,int ) ;
 int up_write (int *) ;

int f2fs_do_tmpfile(struct inode *inode, struct inode *dir)
{
 struct page *page;
 int err = 0;

 down_write(&F2FS_I(inode)->i_sem);
 page = f2fs_init_inode_metadata(inode, dir, ((void*)0), ((void*)0), ((void*)0));
 if (IS_ERR(page)) {
  err = PTR_ERR(page);
  goto fail;
 }
 f2fs_put_page(page, 1);

 clear_inode_flag(inode, FI_NEW_INODE);
 f2fs_update_time(F2FS_I_SB(inode), REQ_TIME);
fail:
 up_write(&F2FS_I(inode)->i_sem);
 return err;
}
