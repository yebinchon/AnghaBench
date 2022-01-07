
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int dummy; } ;
struct dentry {int dummy; } ;


 struct dentry* __d_lookup (struct dentry const*,struct qstr const*) ;
 unsigned int read_seqbegin (int *) ;
 scalar_t__ read_seqretry (int *,unsigned int) ;
 int rename_lock ;

struct dentry *d_lookup(const struct dentry *parent, const struct qstr *name)
{
 struct dentry *dentry;
 unsigned seq;

 do {
  seq = read_seqbegin(&rename_lock);
  dentry = __d_lookup(parent, name);
  if (dentry)
   break;
 } while (read_seqretry(&rename_lock, seq));
 return dentry;
}
