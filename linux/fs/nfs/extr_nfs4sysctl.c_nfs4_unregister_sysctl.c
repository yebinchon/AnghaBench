
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * nfs4_callback_sysctl_table ;
 int unregister_sysctl_table (int *) ;

void nfs4_unregister_sysctl(void)
{
 unregister_sysctl_table(nfs4_callback_sysctl_table);
 nfs4_callback_sysctl_table = ((void*)0);
}
