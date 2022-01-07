
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct smack_known {int smk_secid; } ;
struct inode {int dummy; } ;


 struct smack_known* smk_of_inode (struct inode*) ;

__attribute__((used)) static void smack_inode_getsecid(struct inode *inode, u32 *secid)
{
 struct smack_known *skp = smk_of_inode(inode);

 *secid = skp->smk_secid;
}
