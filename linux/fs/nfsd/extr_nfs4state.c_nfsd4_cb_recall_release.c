
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_callback {int dummy; } ;
struct nfs4_delegation {int dl_stid; } ;


 struct nfs4_delegation* cb_to_delegation (struct nfsd4_callback*) ;
 int nfs4_put_stid (int *) ;

__attribute__((used)) static void nfsd4_cb_recall_release(struct nfsd4_callback *cb)
{
 struct nfs4_delegation *dp = cb_to_delegation(cb);

 nfs4_put_stid(&dp->dl_stid);
}
