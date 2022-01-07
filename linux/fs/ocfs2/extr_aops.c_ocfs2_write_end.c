
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef int loff_t ;
struct TYPE_2__ {int ip_alloc_sem; } ;


 TYPE_1__* OCFS2_I (struct inode*) ;
 int ocfs2_inode_unlock (struct inode*,int) ;
 int ocfs2_write_end_nolock (struct address_space*,int ,unsigned int,unsigned int,void*) ;
 int up_write (int *) ;

__attribute__((used)) static int ocfs2_write_end(struct file *file, struct address_space *mapping,
      loff_t pos, unsigned len, unsigned copied,
      struct page *page, void *fsdata)
{
 int ret;
 struct inode *inode = mapping->host;

 ret = ocfs2_write_end_nolock(mapping, pos, len, copied, fsdata);

 up_write(&OCFS2_I(inode)->ip_alloc_sem);
 ocfs2_inode_unlock(inode, 1);

 return ret;
}
