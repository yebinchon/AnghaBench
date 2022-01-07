
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct nfs4_stid {int sc_type; } ;
struct nfs4_client {int cl_lock; int cl_addr; int cl_clientid; } ;
struct TYPE_9__ {int so_clid; } ;
struct TYPE_10__ {TYPE_1__ si_opaque; } ;
typedef TYPE_2__ stateid_t ;
typedef int addr_str ;
typedef scalar_t__ __be32 ;


 scalar_t__ CLOSE_STATEID (TYPE_2__*) ;
 int INET6_ADDRSTRLEN ;






 scalar_t__ ONE_STATEID (TYPE_2__*) ;
 scalar_t__ ZERO_STATEID (TYPE_2__*) ;
 struct nfs4_stid* find_stateid_locked (struct nfs4_client*,TYPE_2__*) ;
 scalar_t__ nfs_ok ;
 scalar_t__ nfsd4_check_openowner_confirmed (int ) ;
 scalar_t__ nfsd4_stid_check_stateid_generation (TYPE_2__*,struct nfs4_stid*,int) ;
 scalar_t__ nfserr_bad_stateid ;
 scalar_t__ nfserr_deleg_revoked ;
 int openlockstateid (struct nfs4_stid*) ;
 int pr_warn_ratelimited (char*,char*) ;
 int printk (char*,int) ;
 int rpc_ntop (struct sockaddr*,char*,int) ;
 int same_clid (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static __be32 nfsd4_validate_stateid(struct nfs4_client *cl, stateid_t *stateid)
{
 struct nfs4_stid *s;
 __be32 status = nfserr_bad_stateid;

 if (ZERO_STATEID(stateid) || ONE_STATEID(stateid) ||
  CLOSE_STATEID(stateid))
  return status;

 if (!same_clid(&stateid->si_opaque.so_clid, &cl->cl_clientid)) {
  char addr_str[INET6_ADDRSTRLEN];
  rpc_ntop((struct sockaddr *)&cl->cl_addr, addr_str,
     sizeof(addr_str));
  pr_warn_ratelimited("NFSD: client %s testing state ID "
     "with incorrect client ID\n", addr_str);
  return status;
 }
 spin_lock(&cl->cl_lock);
 s = find_stateid_locked(cl, stateid);
 if (!s)
  goto out_unlock;
 status = nfsd4_stid_check_stateid_generation(stateid, s, 1);
 if (status)
  goto out_unlock;
 switch (s->sc_type) {
 case 131:
  status = nfs_ok;
  break;
 case 128:
  status = nfserr_deleg_revoked;
  break;
 case 129:
 case 130:
  status = nfsd4_check_openowner_confirmed(openlockstateid(s));
  break;
 default:
  printk("unknown stateid type %x\n", s->sc_type);

 case 132:
 case 133:
  status = nfserr_bad_stateid;
 }
out_unlock:
 spin_unlock(&cl->cl_lock);
 return status;
}
