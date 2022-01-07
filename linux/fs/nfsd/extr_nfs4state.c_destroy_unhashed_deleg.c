
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_delegation {int dl_stid; int dl_clnt_odstate; } ;


 int nfs4_put_stid (int *) ;
 int nfs4_unlock_deleg_lease (struct nfs4_delegation*) ;
 int put_clnt_odstate (int ) ;

__attribute__((used)) static void destroy_unhashed_deleg(struct nfs4_delegation *dp)
{
 put_clnt_odstate(dp->dl_clnt_odstate);
 nfs4_unlock_deleg_lease(dp);
 nfs4_put_stid(&dp->dl_stid);
}
