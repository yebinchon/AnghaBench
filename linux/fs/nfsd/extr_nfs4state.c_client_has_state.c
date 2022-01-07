
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_client {int async_copies; int cl_sessions; int cl_delegations; int cl_lo_states; } ;


 scalar_t__ client_has_openowners (struct nfs4_client*) ;
 int list_empty (int *) ;

__attribute__((used)) static bool client_has_state(struct nfs4_client *clp)
{
 return client_has_openowners(clp)



  || !list_empty(&clp->cl_delegations)
  || !list_empty(&clp->cl_sessions)
  || !list_empty(&clp->async_copies);
}
