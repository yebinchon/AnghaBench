
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_stid {int dummy; } ;
struct nfs4_ol_stateid {scalar_t__ st_stateowner; int st_clnt_odstate; } ;


 int kmem_cache_free (int ,struct nfs4_stid*) ;
 int nfs4_put_stateowner (scalar_t__) ;
 struct nfs4_ol_stateid* openlockstateid (struct nfs4_stid*) ;
 int put_clnt_odstate (int ) ;
 int release_all_access (struct nfs4_ol_stateid*) ;
 int stateid_slab ;

__attribute__((used)) static void nfs4_free_ol_stateid(struct nfs4_stid *stid)
{
 struct nfs4_ol_stateid *stp = openlockstateid(stid);

 put_clnt_odstate(stp->st_clnt_odstate);
 release_all_access(stp);
 if (stp->st_stateowner)
  nfs4_put_stateowner(stp->st_stateowner);
 kmem_cache_free(stateid_slab, stid);
}
