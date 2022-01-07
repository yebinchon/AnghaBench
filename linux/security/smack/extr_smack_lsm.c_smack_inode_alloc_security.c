
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smack_known {int dummy; } ;
struct inode {int dummy; } ;


 int init_inode_smack (struct inode*,struct smack_known*) ;
 struct smack_known* smk_of_current () ;

__attribute__((used)) static int smack_inode_alloc_security(struct inode *inode)
{
 struct smack_known *skp = smk_of_current();

 init_inode_smack(inode, skp);
 return 0;
}
