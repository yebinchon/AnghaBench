
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {scalar_t__ i_state; } ;


 struct inode* alloc_inode (struct super_block*) ;
 int destroy_inode (struct inode*) ;
 struct inode* ilookup5 (struct super_block*,unsigned long,int (*) (struct inode*,void*),void*) ;
 struct inode* inode_insert5 (struct inode*,unsigned long,int (*) (struct inode*,void*),int (*) (struct inode*,void*),void*) ;
 scalar_t__ unlikely (int) ;

struct inode *iget5_locked(struct super_block *sb, unsigned long hashval,
  int (*test)(struct inode *, void *),
  int (*set)(struct inode *, void *), void *data)
{
 struct inode *inode = ilookup5(sb, hashval, test, data);

 if (!inode) {
  struct inode *new = alloc_inode(sb);

  if (new) {
   new->i_state = 0;
   inode = inode_insert5(new, hashval, test, set, data);
   if (unlikely(inode != new))
    destroy_inode(new);
  }
 }
 return inode;
}
