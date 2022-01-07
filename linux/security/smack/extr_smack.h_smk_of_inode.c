
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smack_known {int dummy; } ;
struct inode_smack {struct smack_known* smk_inode; } ;
struct inode {int dummy; } ;


 struct inode_smack* smack_inode (struct inode const*) ;

__attribute__((used)) static inline struct smack_known *smk_of_inode(const struct inode *isp)
{
 struct inode_smack *sip = smack_inode(isp);
 return sip->smk_inode;
}
