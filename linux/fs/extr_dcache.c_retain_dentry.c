
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int count; } ;
struct dentry {int d_flags; TYPE_2__ d_lockref; TYPE_1__* d_op; } ;
struct TYPE_3__ {scalar_t__ (* d_delete ) (struct dentry*) ;} ;


 int DCACHE_DISCONNECTED ;
 int DCACHE_LRU_LIST ;
 int DCACHE_OP_DELETE ;
 int DCACHE_REFERENCED ;
 int WARN_ON (int ) ;
 int d_in_lookup (struct dentry*) ;
 int d_lru_add (struct dentry*) ;
 int d_unhashed (struct dentry*) ;
 scalar_t__ stub1 (struct dentry*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline bool retain_dentry(struct dentry *dentry)
{
 WARN_ON(d_in_lookup(dentry));


 if (unlikely(d_unhashed(dentry)))
  return 0;

 if (unlikely(dentry->d_flags & DCACHE_DISCONNECTED))
  return 0;

 if (unlikely(dentry->d_flags & DCACHE_OP_DELETE)) {
  if (dentry->d_op->d_delete(dentry))
   return 0;
 }

 dentry->d_lockref.count--;
 if (unlikely(!(dentry->d_flags & DCACHE_LRU_LIST)))
  d_lru_add(dentry);
 else if (unlikely(!(dentry->d_flags & DCACHE_REFERENCED)))
  dentry->d_flags |= DCACHE_REFERENCED;
 return 1;
}
