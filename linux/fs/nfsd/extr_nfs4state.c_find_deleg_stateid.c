
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_stid {int dummy; } ;
struct nfs4_delegation {int dummy; } ;
struct nfs4_client {int dummy; } ;
typedef int stateid_t ;


 int NFS4_DELEG_STID ;
 int NFS4_REVOKED_DELEG_STID ;
 struct nfs4_delegation* delegstateid (struct nfs4_stid*) ;
 struct nfs4_stid* find_stateid_by_type (struct nfs4_client*,int *,int) ;

__attribute__((used)) static struct nfs4_delegation *find_deleg_stateid(struct nfs4_client *cl, stateid_t *s)
{
 struct nfs4_stid *ret;

 ret = find_stateid_by_type(cl, s,
    NFS4_DELEG_STID|NFS4_REVOKED_DELEG_STID);
 if (!ret)
  return ((void*)0);
 return delegstateid(ret);
}
