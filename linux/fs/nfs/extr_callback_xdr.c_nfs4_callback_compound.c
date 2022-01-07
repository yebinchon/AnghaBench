
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct TYPE_7__ {TYPE_2__* head; } ;
struct TYPE_8__ {TYPE_1__* head; } ;
struct svc_rqst {int rq_resp; int rq_argp; TYPE_3__ rq_res; TYPE_4__ rq_arg; } ;
struct cb_process_state {scalar_t__ minorversion; int * clp; int net; int drc_status; } ;
struct cb_compound_hdr_res {scalar_t__* nops; scalar_t__* status; int tag; int taglen; int * member_0; } ;
struct cb_compound_hdr_arg {scalar_t__ minorversion; unsigned int nops; int tag; int taglen; int cb_ident; int member_0; } ;
typedef scalar_t__ __be32 ;
struct TYPE_6__ {int iov_len; scalar_t__ iov_base; } ;
struct TYPE_5__ {int iov_base; } ;


 unsigned int NFS4ERR_RESOURCE ;
 unsigned int NFS4ERR_RESOURCE_HDR ;
 int SVC_NET (struct svc_rqst*) ;
 int check_gss_callback_principal (int *,struct svc_rqst*) ;
 scalar_t__ decode_compound_hdr_arg (struct xdr_stream*,struct cb_compound_hdr_arg*) ;
 scalar_t__ encode_compound_hdr_res (struct xdr_stream*,struct cb_compound_hdr_res*) ;
 scalar_t__ htonl (unsigned int) ;
 int nfs4_cb_free_slot (struct cb_process_state*) ;
 int * nfs4_find_client_ident (int ,int ) ;
 int nfs_put_client (int *) ;
 int pr_warn_ratelimited (char*) ;
 scalar_t__ process_op (unsigned int,struct svc_rqst*,struct xdr_stream*,int ,struct xdr_stream*,int ,struct cb_process_state*) ;
 int rpc_autherr_badcred ;
 scalar_t__ rpc_garbage_args ;
 scalar_t__ rpc_success ;
 scalar_t__ rpc_system_err ;
 scalar_t__ svc_return_autherr (struct svc_rqst*,int ) ;
 scalar_t__ unlikely (int) ;
 int xdr_init_decode (struct xdr_stream*,TYPE_4__*,int ,int *) ;
 int xdr_init_encode (struct xdr_stream*,TYPE_3__*,scalar_t__*,int *) ;

__attribute__((used)) static __be32 nfs4_callback_compound(struct svc_rqst *rqstp)
{
 struct cb_compound_hdr_arg hdr_arg = { 0 };
 struct cb_compound_hdr_res hdr_res = { ((void*)0) };
 struct xdr_stream xdr_in, xdr_out;
 __be32 *p, status;
 struct cb_process_state cps = {
  .drc_status = 0,
  .clp = ((void*)0),
  .net = SVC_NET(rqstp),
 };
 unsigned int nops = 0;

 xdr_init_decode(&xdr_in, &rqstp->rq_arg,
   rqstp->rq_arg.head[0].iov_base, ((void*)0));

 p = (__be32*)((char *)rqstp->rq_res.head[0].iov_base + rqstp->rq_res.head[0].iov_len);
 xdr_init_encode(&xdr_out, &rqstp->rq_res, p, ((void*)0));

 status = decode_compound_hdr_arg(&xdr_in, &hdr_arg);
 if (status == htonl(NFS4ERR_RESOURCE))
  return rpc_garbage_args;

 if (hdr_arg.minorversion == 0) {
  cps.clp = nfs4_find_client_ident(SVC_NET(rqstp), hdr_arg.cb_ident);
  if (!cps.clp || !check_gss_callback_principal(cps.clp, rqstp)) {
   if (cps.clp)
    nfs_put_client(cps.clp);
   goto out_invalidcred;
  }
 }

 cps.minorversion = hdr_arg.minorversion;
 hdr_res.taglen = hdr_arg.taglen;
 hdr_res.tag = hdr_arg.tag;
 if (encode_compound_hdr_res(&xdr_out, &hdr_res) != 0) {
  if (cps.clp)
   nfs_put_client(cps.clp);
  return rpc_system_err;
 }
 while (status == 0 && nops != hdr_arg.nops) {
  status = process_op(nops, rqstp, &xdr_in,
        rqstp->rq_argp, &xdr_out, rqstp->rq_resp,
        &cps);
  nops++;
 }



 if (unlikely(status == htonl(NFS4ERR_RESOURCE_HDR))) {
  status = htonl(NFS4ERR_RESOURCE);
  nops--;
 }

 *hdr_res.status = status;
 *hdr_res.nops = htonl(nops);
 nfs4_cb_free_slot(&cps);
 nfs_put_client(cps.clp);
 return rpc_success;

out_invalidcred:
 pr_warn_ratelimited("NFS: NFSv4 callback contains invalid cred\n");
 return svc_return_autherr(rqstp, rpc_autherr_badcred);
}
