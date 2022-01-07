
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nfsd4_close {int cl_stateid; int cl_seqid; } ;
union nfsd4_op_u {struct nfsd4_close close; } ;
struct svc_rqst {int dummy; } ;
struct nfsd_net {int dummy; } ;
struct TYPE_4__ {int fh_dentry; } ;
struct nfsd4_compound_state {TYPE_1__ current_fh; } ;
struct TYPE_5__ {int sc_type; } ;
struct nfs4_ol_stateid {TYPE_2__ st_stid; int st_mutex; } ;
struct net {int dummy; } ;
typedef scalar_t__ __be32 ;


 int NFS4_CLOSED_STID ;
 int NFS4_OPEN_STID ;
 struct net* SVC_NET (struct svc_rqst*) ;
 int close_stateid ;
 int dprintk (char*,int ) ;
 int memcpy (int *,int *,int) ;
 int mutex_unlock (int *) ;
 struct nfsd_net* net_generic (struct net*,int ) ;
 int nfs4_inc_and_copy_stateid (int *,TYPE_2__*) ;
 scalar_t__ nfs4_preprocess_seqid_op (struct nfsd4_compound_state*,int ,int *,int,struct nfs4_ol_stateid**,struct nfsd_net*) ;
 int nfs4_put_stid (TYPE_2__*) ;
 int nfsd4_bump_seqid (struct nfsd4_compound_state*,scalar_t__) ;
 int nfsd4_close_open_stateid (struct nfs4_ol_stateid*) ;
 int nfsd_net_id ;

__be32
nfsd4_close(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
  union nfsd4_op_u *u)
{
 struct nfsd4_close *close = &u->close;
 __be32 status;
 struct nfs4_ol_stateid *stp;
 struct net *net = SVC_NET(rqstp);
 struct nfsd_net *nn = net_generic(net, nfsd_net_id);

 dprintk("NFSD: nfsd4_close on file %pd\n",
   cstate->current_fh.fh_dentry);

 status = nfs4_preprocess_seqid_op(cstate, close->cl_seqid,
     &close->cl_stateid,
     NFS4_OPEN_STID|NFS4_CLOSED_STID,
     &stp, nn);
 nfsd4_bump_seqid(cstate, status);
 if (status)
  goto out;

 stp->st_stid.sc_type = NFS4_CLOSED_STID;







 nfs4_inc_and_copy_stateid(&close->cl_stateid, &stp->st_stid);

 nfsd4_close_open_stateid(stp);
 mutex_unlock(&stp->st_mutex);
 memcpy(&close->cl_stateid, &close_stateid, sizeof(close->cl_stateid));


 nfs4_put_stid(&stp->st_stid);
out:
 return status;
}
