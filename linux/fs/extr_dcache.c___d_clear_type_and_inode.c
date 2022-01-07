
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_flags; int * d_inode; } ;


 unsigned int DCACHE_ENTRY_TYPE ;
 unsigned int DCACHE_FALLTHRU ;
 int DCACHE_LRU_LIST ;
 unsigned int READ_ONCE (int) ;
 int WRITE_ONCE (int,unsigned int) ;
 int nr_dentry_negative ;
 int this_cpu_inc (int ) ;

__attribute__((used)) static inline void __d_clear_type_and_inode(struct dentry *dentry)
{
 unsigned flags = READ_ONCE(dentry->d_flags);

 flags &= ~(DCACHE_ENTRY_TYPE | DCACHE_FALLTHRU);
 WRITE_ONCE(dentry->d_flags, flags);
 dentry->d_inode = ((void*)0);
 if (dentry->d_flags & DCACHE_LRU_LIST)
  this_cpu_inc(nr_dentry_negative);
}
