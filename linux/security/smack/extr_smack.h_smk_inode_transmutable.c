
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode_smack {int smk_flags; } ;
struct inode {int dummy; } ;


 int SMK_INODE_TRANSMUTE ;
 struct inode_smack* smack_inode (struct inode const*) ;

__attribute__((used)) static inline int smk_inode_transmutable(const struct inode *isp)
{
 struct inode_smack *sip = smack_inode(isp);
 return (sip->smk_flags & SMK_INODE_TRANSMUTE) != 0;
}
