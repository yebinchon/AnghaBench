
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_smack {struct smack_known* smk_task; } ;
struct smack_known {int dummy; } ;
struct inode_smack {struct smack_known* smk_inode; } ;
struct dentry {int d_parent; } ;
struct cred {int dummy; } ;


 int ENOMEM ;
 int d_inode (int ) ;
 struct cred* prepare_creds () ;
 struct task_smack* smack_cred (struct cred*) ;
 struct inode_smack* smack_inode (int ) ;

__attribute__((used)) static int smack_inode_copy_up(struct dentry *dentry, struct cred **new)
{

 struct task_smack *tsp;
 struct smack_known *skp;
 struct inode_smack *isp;
 struct cred *new_creds = *new;

 if (new_creds == ((void*)0)) {
  new_creds = prepare_creds();
  if (new_creds == ((void*)0))
   return -ENOMEM;
 }

 tsp = smack_cred(new_creds);




 isp = smack_inode(d_inode(dentry->d_parent));
 skp = isp->smk_inode;
 tsp->smk_task = skp;
 *new = new_creds;
 return 0;
}
