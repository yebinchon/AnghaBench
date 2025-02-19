
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_blocksize_bits; } ;
struct isofs_iget5_callback_data {unsigned long block; unsigned long offset; } ;
struct inode {int i_state; } ;


 long EINVAL ;
 long ENOMEM ;
 struct inode* ERR_PTR (long) ;
 int I_NEW ;
 struct inode* iget5_locked (struct super_block*,unsigned long,int *,int *,struct isofs_iget5_callback_data*) ;
 int iget_failed (struct inode*) ;
 int isofs_iget5_set ;
 int isofs_iget5_test ;
 long isofs_read_inode (struct inode*,int) ;
 int unlock_new_inode (struct inode*) ;

struct inode *__isofs_iget(struct super_block *sb,
      unsigned long block,
      unsigned long offset,
      int relocated)
{
 unsigned long hashval;
 struct inode *inode;
 struct isofs_iget5_callback_data data;
 long ret;

 if (offset >= 1ul << sb->s_blocksize_bits)
  return ERR_PTR(-EINVAL);

 data.block = block;
 data.offset = offset;

 hashval = (block << sb->s_blocksize_bits) | offset;

 inode = iget5_locked(sb, hashval, &isofs_iget5_test,
    &isofs_iget5_set, &data);

 if (!inode)
  return ERR_PTR(-ENOMEM);

 if (inode->i_state & I_NEW) {
  ret = isofs_read_inode(inode, relocated);
  if (ret < 0) {
   iget_failed(inode);
   inode = ERR_PTR(ret);
  } else {
   unlock_new_inode(inode);
  }
 }

 return inode;
}
