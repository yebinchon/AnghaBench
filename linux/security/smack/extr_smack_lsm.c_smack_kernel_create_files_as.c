
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_smack {int smk_forked; int smk_task; } ;
struct inode_smack {int smk_inode; } ;
struct inode {int dummy; } ;
struct cred {int dummy; } ;


 struct task_smack* smack_cred (struct cred*) ;
 struct inode_smack* smack_inode (struct inode*) ;

__attribute__((used)) static int smack_kernel_create_files_as(struct cred *new,
     struct inode *inode)
{
 struct inode_smack *isp = smack_inode(inode);
 struct task_smack *tsp = smack_cred(new);

 tsp->smk_forked = isp->smk_inode;
 tsp->smk_task = tsp->smk_forked;
 return 0;
}
