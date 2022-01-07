
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct qstr {int dummy; } ;
struct dentry {int d_flags; } ;


 int DCACHE_NORCU ;
 struct dentry* __d_alloc (struct super_block*,struct qstr const*) ;
 scalar_t__ likely (struct dentry*) ;

struct dentry *d_alloc_pseudo(struct super_block *sb, const struct qstr *name)
{
 struct dentry *dentry = __d_alloc(sb, name);
 if (likely(dentry))
  dentry->d_flags |= DCACHE_NORCU;
 return dentry;
}
