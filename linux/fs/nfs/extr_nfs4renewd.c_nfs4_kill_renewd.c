
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_client {int cl_renewd; } ;


 int cancel_delayed_work_sync (int *) ;

void
nfs4_kill_renewd(struct nfs_client *clp)
{
 cancel_delayed_work_sync(&clp->cl_renewd);
}
