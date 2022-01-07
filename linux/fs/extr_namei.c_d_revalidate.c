
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {int d_flags; TYPE_1__* d_op; } ;
struct TYPE_2__ {int (* d_revalidate ) (struct dentry*,unsigned int) ;} ;


 int DCACHE_OP_REVALIDATE ;
 int stub1 (struct dentry*,unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int d_revalidate(struct dentry *dentry, unsigned int flags)
{
 if (unlikely(dentry->d_flags & DCACHE_OP_REVALIDATE))
  return dentry->d_op->d_revalidate(dentry, flags);
 else
  return 1;
}
