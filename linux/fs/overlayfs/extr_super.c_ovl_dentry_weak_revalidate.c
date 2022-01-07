
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ovl_entry {unsigned int numlower; TYPE_2__* lowerstack; } ;
struct dentry {int d_flags; TYPE_1__* d_op; struct ovl_entry* d_fsdata; } ;
struct TYPE_4__ {struct dentry* dentry; } ;
struct TYPE_3__ {int (* d_weak_revalidate ) (struct dentry*,unsigned int) ;} ;


 int DCACHE_OP_WEAK_REVALIDATE ;
 int stub1 (struct dentry*,unsigned int) ;

__attribute__((used)) static int ovl_dentry_weak_revalidate(struct dentry *dentry, unsigned int flags)
{
 struct ovl_entry *oe = dentry->d_fsdata;
 unsigned int i;
 int ret = 1;

 for (i = 0; i < oe->numlower; i++) {
  struct dentry *d = oe->lowerstack[i].dentry;

  if (d->d_flags & DCACHE_OP_WEAK_REVALIDATE) {
   ret = d->d_op->d_weak_revalidate(d, flags);
   if (ret <= 0)
    break;
  }
 }
 return ret;
}
