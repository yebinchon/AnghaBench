
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kioctx {int dummy; } ;
struct inode {int i_size; TYPE_1__* i_mapping; } ;
struct file {int i_size; TYPE_1__* i_mapping; } ;
typedef int loff_t ;
struct TYPE_5__ {int mnt_sb; } ;
struct TYPE_4__ {struct kioctx* private_data; int * a_ops; } ;


 struct inode* ERR_CAST (struct inode*) ;
 scalar_t__ IS_ERR (struct inode*) ;
 int O_RDWR ;
 int PAGE_SIZE ;
 int aio_ctx_aops ;
 TYPE_2__* aio_mnt ;
 int aio_ring_fops ;
 struct inode* alloc_anon_inode (int ) ;
 struct inode* alloc_file_pseudo (struct inode*,TYPE_2__*,char*,int ,int *) ;
 int iput (struct inode*) ;

__attribute__((used)) static struct file *aio_private_file(struct kioctx *ctx, loff_t nr_pages)
{
 struct file *file;
 struct inode *inode = alloc_anon_inode(aio_mnt->mnt_sb);
 if (IS_ERR(inode))
  return ERR_CAST(inode);

 inode->i_mapping->a_ops = &aio_ctx_aops;
 inode->i_mapping->private_data = ctx;
 inode->i_size = PAGE_SIZE * nr_pages;

 file = alloc_file_pseudo(inode, aio_mnt, "[aio]",
    O_RDWR, &aio_ring_fops);
 if (IS_ERR(file))
  iput(inode);
 return file;
}
