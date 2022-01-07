
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct smack_known {int dummy; } ;
struct inode_smack {int smk_flags; struct smack_known* smk_inode; } ;
struct inode {int dummy; } ;


 int SMK_INODE_INSTANT ;
 struct inode_smack* smack_inode (struct inode*) ;
 struct smack_known* smk_of_task_struct (struct task_struct*) ;

__attribute__((used)) static void smack_task_to_inode(struct task_struct *p, struct inode *inode)
{
 struct inode_smack *isp = smack_inode(inode);
 struct smack_known *skp = smk_of_task_struct(p);

 isp->smk_inode = skp;
 isp->smk_flags |= SMK_INODE_INSTANT;
}
