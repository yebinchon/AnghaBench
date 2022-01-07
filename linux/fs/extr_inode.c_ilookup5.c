
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int dummy; } ;


 struct inode* ilookup5_nowait (struct super_block*,unsigned long,int (*) (struct inode*,void*),void*) ;
 int inode_unhashed (struct inode*) ;
 int iput (struct inode*) ;
 scalar_t__ unlikely (int ) ;
 int wait_on_inode (struct inode*) ;

struct inode *ilookup5(struct super_block *sb, unsigned long hashval,
  int (*test)(struct inode *, void *), void *data)
{
 struct inode *inode;
again:
 inode = ilookup5_nowait(sb, hashval, test, data);
 if (inode) {
  wait_on_inode(inode);
  if (unlikely(inode_unhashed(inode))) {
   iput(inode);
   goto again;
  }
 }
 return inode;
}
