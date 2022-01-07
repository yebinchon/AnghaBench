
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_smack {TYPE_1__* smk_task; } ;
struct qstr {int dummy; } ;
struct inode_smack {int smk_flags; TYPE_1__* smk_inode; } ;
struct dentry {int d_parent; } ;
typedef struct cred const cred ;
struct TYPE_2__ {int smk_rules; int smk_known; } ;


 int MAY_TRANSMUTE ;
 int SMK_INODE_TRANSMUTE ;
 int d_inode (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct task_smack* smack_cred (struct cred const*) ;
 struct inode_smack* smack_inode (int ) ;
 int smk_access_entry (int ,int ,int *) ;

__attribute__((used)) static int smack_dentry_create_files_as(struct dentry *dentry, int mode,
     struct qstr *name,
     const struct cred *old,
     struct cred *new)
{
 struct task_smack *otsp = smack_cred(old);
 struct task_smack *ntsp = smack_cred(new);
 struct inode_smack *isp;
 int may;





 ntsp->smk_task = otsp->smk_task;




 isp = smack_inode(d_inode(dentry->d_parent));

 if (isp->smk_flags & SMK_INODE_TRANSMUTE) {
  rcu_read_lock();
  may = smk_access_entry(otsp->smk_task->smk_known,
           isp->smk_inode->smk_known,
           &otsp->smk_task->smk_rules);
  rcu_read_unlock();






  if (may > 0 && (may & MAY_TRANSMUTE))
   ntsp->smk_task = isp->smk_inode;
 }
 return 0;
}
