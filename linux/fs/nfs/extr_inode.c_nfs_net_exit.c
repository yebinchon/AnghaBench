
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;


 int nfs_clients_exit (struct net*) ;
 int nfs_fs_proc_net_exit (struct net*) ;

__attribute__((used)) static void nfs_net_exit(struct net *net)
{
 nfs_fs_proc_net_exit(net);
 nfs_clients_exit(net);
}
