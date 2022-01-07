
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int dummy; } ;
struct dentry {int dummy; } ;


 struct dentry* ERR_PTR (int) ;
 struct dentry* lookup_dcache (struct qstr*,struct dentry*,int ) ;
 int lookup_one_len_common (char const*,struct dentry*,int,struct qstr*) ;
 struct dentry* lookup_slow (struct qstr*,struct dentry*,int ) ;

struct dentry *lookup_one_len_unlocked(const char *name,
           struct dentry *base, int len)
{
 struct qstr this;
 int err;
 struct dentry *ret;

 err = lookup_one_len_common(name, base, len, &this);
 if (err)
  return ERR_PTR(err);

 ret = lookup_dcache(&this, base, 0);
 if (!ret)
  ret = lookup_slow(&this, base, 0);
 return ret;
}
