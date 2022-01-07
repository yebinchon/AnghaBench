
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ipc_perm {int dummy; } ;


 int call_int_hook (int ,int ,struct kern_ipc_perm*,short) ;
 int ipc_permission ;

int security_ipc_permission(struct kern_ipc_perm *ipcp, short flag)
{
 return call_int_hook(ipc_permission, 0, ipcp, flag);
}
