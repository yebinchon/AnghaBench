
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int dummy; } ;
struct dentry {int d_inode; } ;


 struct dentry* ERR_PTR (int) ;
 int WARN_ON_ONCE (int) ;
 struct dentry* __lookup_slow (struct qstr*,struct dentry*,int ) ;
 int inode_is_locked (int ) ;
 struct dentry* lookup_dcache (struct qstr*,struct dentry*,int ) ;
 int lookup_one_len_common (char const*,struct dentry*,int,struct qstr*) ;

struct dentry *lookup_one_len(const char *name, struct dentry *base, int len)
{
 struct dentry *dentry;
 struct qstr this;
 int err;

 WARN_ON_ONCE(!inode_is_locked(base->d_inode));

 err = lookup_one_len_common(name, base, len, &this);
 if (err)
  return ERR_PTR(err);

 dentry = lookup_dcache(&this, base, 0);
 return dentry ? dentry : __lookup_slow(&this, base, 0);
}
