
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;


 int nfs_clients_init (struct net*) ;
 int nfs_fs_proc_net_init (struct net*) ;

__attribute__((used)) static int nfs_net_init(struct net *net)
{
 nfs_clients_init(net);
 return nfs_fs_proc_net_init(net);
}
