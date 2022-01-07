
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qstr {char const* name; int len; int hash; } ;
struct dentry {int d_flags; int d_inode; TYPE_1__* d_op; } ;
struct TYPE_2__ {int (* d_hash ) (struct dentry*,struct qstr*) ;} ;


 int DCACHE_OP_HASH ;
 int EACCES ;
 int MAY_EXEC ;
 int full_name_hash (struct dentry*,char const*,int) ;
 int inode_permission (int ,int ) ;
 int stub1 (struct dentry*,struct qstr*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int lookup_one_len_common(const char *name, struct dentry *base,
     int len, struct qstr *this)
{
 this->name = name;
 this->len = len;
 this->hash = full_name_hash(base, name, len);
 if (!len)
  return -EACCES;

 if (unlikely(name[0] == '.')) {
  if (len < 2 || (len == 2 && name[1] == '.'))
   return -EACCES;
 }

 while (len--) {
  unsigned int c = *(const unsigned char *)name++;
  if (c == '/' || c == '\0')
   return -EACCES;
 }




 if (base->d_flags & DCACHE_OP_HASH) {
  int err = base->d_op->d_hash(base, this);
  if (err < 0)
   return err;
 }

 return inode_permission(base->d_inode, MAY_EXEC);
}
