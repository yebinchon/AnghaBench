
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_state; } ;


 int EBUSY ;
 int I_CREATING ;
 struct inode* inode_insert5 (struct inode*,unsigned long,int (*) (struct inode*,void*),int *,void*) ;
 int iput (struct inode*) ;

int insert_inode_locked4(struct inode *inode, unsigned long hashval,
  int (*test)(struct inode *, void *), void *data)
{
 struct inode *old;

 inode->i_state |= I_CREATING;
 old = inode_insert5(inode, hashval, test, ((void*)0), data);

 if (old != inode) {
  iput(old);
  return -EBUSY;
 }
 return 0;
}
