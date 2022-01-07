
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct svc_fh {int fh_dentry; } ;
struct nfsd_net {int dummy; } ;
struct nfsd_file {int dummy; } ;
struct nfsd4_compound_state {int dummy; } ;
struct nfs4_stid {int sc_type; } ;
struct net {int dummy; } ;
struct inode {int dummy; } ;
typedef int stateid_t ;
typedef scalar_t__ __be32 ;





 scalar_t__ ONE_STATEID (int *) ;
 struct net* SVC_NET (struct svc_rqst*) ;
 scalar_t__ ZERO_STATEID (int *) ;
 scalar_t__ check_special_stateids (struct net*,struct svc_fh*,int *,int) ;
 struct inode* d_inode (int ) ;
 int delegstateid (struct nfs4_stid*) ;
 scalar_t__ grace_disallows_io (struct net*,struct inode*) ;
 struct nfsd_net* net_generic (struct net*,int ) ;
 scalar_t__ nfs4_check_delegmode (int ,int) ;
 scalar_t__ nfs4_check_fh (struct svc_fh*,struct nfs4_stid*) ;
 scalar_t__ nfs4_check_file (struct svc_rqst*,struct svc_fh*,struct nfs4_stid*,struct nfsd_file**,int) ;
 scalar_t__ nfs4_check_olstateid (int ,int) ;
 int nfs4_put_stid (struct nfs4_stid*) ;
 scalar_t__ nfs_ok ;
 int nfsd4_has_session (struct nfsd4_compound_state*) ;
 scalar_t__ nfsd4_lookup_stateid (struct nfsd4_compound_state*,int *,int,struct nfs4_stid**,struct nfsd_net*) ;
 scalar_t__ nfsd4_stid_check_stateid_generation (int *,struct nfs4_stid*,int ) ;
 int nfsd_net_id ;
 scalar_t__ nfserr_bad_stateid ;
 scalar_t__ nfserr_grace ;
 int openlockstateid (struct nfs4_stid*) ;

__be32
nfs4_preprocess_stateid_op(struct svc_rqst *rqstp,
  struct nfsd4_compound_state *cstate, struct svc_fh *fhp,
  stateid_t *stateid, int flags, struct nfsd_file **nfp)
{
 struct inode *ino = d_inode(fhp->fh_dentry);
 struct net *net = SVC_NET(rqstp);
 struct nfsd_net *nn = net_generic(net, nfsd_net_id);
 struct nfs4_stid *s = ((void*)0);
 __be32 status;

 if (nfp)
  *nfp = ((void*)0);

 if (grace_disallows_io(net, ino))
  return nfserr_grace;

 if (ZERO_STATEID(stateid) || ONE_STATEID(stateid)) {
  status = check_special_stateids(net, fhp, stateid, flags);
  goto done;
 }

 status = nfsd4_lookup_stateid(cstate, stateid,
    130|128|129,
    &s, nn);
 if (status)
  return status;
 status = nfsd4_stid_check_stateid_generation(stateid, s,
   nfsd4_has_session(cstate));
 if (status)
  goto out;

 switch (s->sc_type) {
 case 130:
  status = nfs4_check_delegmode(delegstateid(s), flags);
  break;
 case 128:
 case 129:
  status = nfs4_check_olstateid(openlockstateid(s), flags);
  break;
 default:
  status = nfserr_bad_stateid;
  break;
 }
 if (status)
  goto out;
 status = nfs4_check_fh(fhp, s);

done:
 if (status == nfs_ok && nfp)
  status = nfs4_check_file(rqstp, fhp, s, nfp, flags);
out:
 if (s)
  nfs4_put_stid(s);
 return status;
}
