
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_client {int dummy; } ;


 int nfs_client_active_wq ;
 int nfs_client_init_is_complete (struct nfs_client const*) ;
 int wait_event_killable (int ,int ) ;

int nfs_wait_client_init_complete(const struct nfs_client *clp)
{
 return wait_event_killable(nfs_client_active_wq,
   nfs_client_init_is_complete(clp));
}
