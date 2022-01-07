
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smack_known {int dummy; } ;
struct inode_smack {int smk_lock; scalar_t__ smk_flags; struct smack_known* smk_inode; } ;
struct inode {int dummy; } ;


 int mutex_init (int *) ;
 struct inode_smack* smack_inode (struct inode*) ;

__attribute__((used)) static void init_inode_smack(struct inode *inode, struct smack_known *skp)
{
 struct inode_smack *isp = smack_inode(inode);

 isp->smk_inode = skp;
 isp->smk_flags = 0;
 mutex_init(&isp->smk_lock);
}
