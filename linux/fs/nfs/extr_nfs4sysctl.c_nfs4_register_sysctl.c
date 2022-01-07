
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int * nfs4_callback_sysctl_table ;
 int nfs4_cb_sysctl_root ;
 int * register_sysctl_table (int ) ;

int nfs4_register_sysctl(void)
{
 nfs4_callback_sysctl_table = register_sysctl_table(nfs4_cb_sysctl_root);
 if (nfs4_callback_sysctl_table == ((void*)0))
  return -ENOMEM;
 return 0;
}
