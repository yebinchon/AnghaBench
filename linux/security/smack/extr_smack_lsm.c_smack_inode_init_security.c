
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smack_known {int smk_known; int smk_rules; } ;
struct qstr {int dummy; } ;
struct inode_smack {int smk_flags; } ;
struct inode {int dummy; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 int MAY_TRANSMUTE ;
 int SMK_INODE_CHANGED ;
 char* XATTR_SMACK_SUFFIX ;
 void* kstrdup (int ,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct inode_smack* smack_inode (struct inode*) ;
 int smk_access_entry (int ,int ,int *) ;
 scalar_t__ smk_inode_transmutable (struct inode*) ;
 struct smack_known* smk_of_current () ;
 struct smack_known* smk_of_inode (struct inode*) ;
 size_t strlen (int ) ;

__attribute__((used)) static int smack_inode_init_security(struct inode *inode, struct inode *dir,
         const struct qstr *qstr, const char **name,
         void **value, size_t *len)
{
 struct inode_smack *issp = smack_inode(inode);
 struct smack_known *skp = smk_of_current();
 struct smack_known *isp = smk_of_inode(inode);
 struct smack_known *dsp = smk_of_inode(dir);
 int may;

 if (name)
  *name = XATTR_SMACK_SUFFIX;

 if (value && len) {
  rcu_read_lock();
  may = smk_access_entry(skp->smk_known, dsp->smk_known,
           &skp->smk_rules);
  rcu_read_unlock();







  if (may > 0 && ((may & MAY_TRANSMUTE) != 0) &&
      smk_inode_transmutable(dir)) {
   isp = dsp;
   issp->smk_flags |= SMK_INODE_CHANGED;
  }

  *value = kstrdup(isp->smk_known, GFP_NOFS);
  if (*value == ((void*)0))
   return -ENOMEM;

  *len = strlen(isp->smk_known);
 }

 return 0;
}
