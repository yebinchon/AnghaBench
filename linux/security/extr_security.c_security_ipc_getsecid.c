
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct kern_ipc_perm {int dummy; } ;


 int call_void_hook (int ,struct kern_ipc_perm*,scalar_t__*) ;
 int ipc_getsecid ;

void security_ipc_getsecid(struct kern_ipc_perm *ipcp, u32 *secid)
{
 *secid = 0;
 call_void_hook(ipc_getsecid, ipcp, secid);
}
