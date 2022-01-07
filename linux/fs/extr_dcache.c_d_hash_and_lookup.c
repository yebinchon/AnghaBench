
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qstr {int len; int name; int hash; } ;
struct dentry {int d_flags; TYPE_1__* d_op; } ;
struct TYPE_2__ {int (* d_hash ) (struct dentry*,struct qstr*) ;} ;


 int DCACHE_OP_HASH ;
 struct dentry* ERR_PTR (int) ;
 struct dentry* d_lookup (struct dentry*,struct qstr*) ;
 int full_name_hash (struct dentry*,int ,int ) ;
 int stub1 (struct dentry*,struct qstr*) ;
 scalar_t__ unlikely (int) ;

struct dentry *d_hash_and_lookup(struct dentry *dir, struct qstr *name)
{





 name->hash = full_name_hash(dir, name->name, name->len);
 if (dir->d_flags & DCACHE_OP_HASH) {
  int err = dir->d_op->d_hash(dir, name);
  if (unlikely(err < 0))
   return ERR_PTR(err);
 }
 return d_lookup(dir, name);
}
