
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int d_flags; struct inode* d_inode; } ;


 unsigned int DCACHE_ENTRY_TYPE ;
 unsigned int DCACHE_FALLTHRU ;
 unsigned int READ_ONCE (int ) ;
 int WRITE_ONCE (int ,unsigned int) ;

__attribute__((used)) static inline void __d_set_inode_and_type(struct dentry *dentry,
       struct inode *inode,
       unsigned type_flags)
{
 unsigned flags;

 dentry->d_inode = inode;
 flags = READ_ONCE(dentry->d_flags);
 flags &= ~(DCACHE_ENTRY_TYPE | DCACHE_FALLTHRU);
 flags |= type_flags;
 WRITE_ONCE(dentry->d_flags, flags);
}
