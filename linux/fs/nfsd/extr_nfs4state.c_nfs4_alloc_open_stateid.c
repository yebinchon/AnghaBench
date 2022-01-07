
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_stid {int dummy; } ;
struct nfs4_ol_stateid {int dummy; } ;
struct nfs4_client {int dummy; } ;


 struct nfs4_stid* nfs4_alloc_stid (struct nfs4_client*,int ,int ) ;
 int nfs4_free_ol_stateid ;
 struct nfs4_ol_stateid* openlockstateid (struct nfs4_stid*) ;
 int stateid_slab ;

__attribute__((used)) static struct nfs4_ol_stateid * nfs4_alloc_open_stateid(struct nfs4_client *clp)
{
 struct nfs4_stid *stid;

 stid = nfs4_alloc_stid(clp, stateid_slab, nfs4_free_ol_stateid);
 if (!stid)
  return ((void*)0);

 return openlockstateid(stid);
}
