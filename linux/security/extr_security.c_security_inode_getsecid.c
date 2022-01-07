
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct inode {int dummy; } ;


 int call_void_hook (int ,struct inode*,int *) ;
 int inode_getsecid ;

void security_inode_getsecid(struct inode *inode, u32 *secid)
{
 call_void_hook(inode_getsecid, inode, secid);
}
