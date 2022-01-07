
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct kernel_lb_addr {int dummy; } ;
struct inode {int i_state; } ;
struct TYPE_2__ {int i_location; } ;


 int ENOMEM ;
 struct inode* ERR_PTR (int) ;
 int I_NEW ;
 TYPE_1__* UDF_I (struct inode*) ;
 int iget_failed (struct inode*) ;
 struct inode* iget_locked (struct super_block*,unsigned long) ;
 int memcpy (int *,struct kernel_lb_addr*,int) ;
 unsigned long udf_get_lb_pblock (struct super_block*,struct kernel_lb_addr*,int ) ;
 int udf_read_inode (struct inode*,int) ;
 int unlock_new_inode (struct inode*) ;

struct inode *__udf_iget(struct super_block *sb, struct kernel_lb_addr *ino,
    bool hidden_inode)
{
 unsigned long block = udf_get_lb_pblock(sb, ino, 0);
 struct inode *inode = iget_locked(sb, block);
 int err;

 if (!inode)
  return ERR_PTR(-ENOMEM);

 if (!(inode->i_state & I_NEW))
  return inode;

 memcpy(&UDF_I(inode)->i_location, ino, sizeof(struct kernel_lb_addr));
 err = udf_read_inode(inode, hidden_inode);
 if (err < 0) {
  iget_failed(inode);
  return ERR_PTR(err);
 }
 unlock_new_inode(inode);

 return inode;
}
