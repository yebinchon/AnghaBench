
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct inode_security_struct {int sid; } ;
struct inode {int dummy; } ;


 struct inode_security_struct* inode_security_novalidate (struct inode*) ;

__attribute__((used)) static void selinux_inode_getsecid(struct inode *inode, u32 *secid)
{
 struct inode_security_struct *isec = inode_security_novalidate(inode);
 *secid = isec->sid;
}
