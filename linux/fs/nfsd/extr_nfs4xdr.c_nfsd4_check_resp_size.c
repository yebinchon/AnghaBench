
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct xdr_buf {scalar_t__ len; scalar_t__ buflen; } ;
struct nfsd4_slot {int sl_flags; } ;
struct TYPE_4__ {struct nfsd4_slot* slot; } ;
struct nfsd4_compoundres {TYPE_2__ cstate; TYPE_1__* rqstp; } ;
typedef int __be32 ;
struct TYPE_3__ {struct xdr_buf rq_res; } ;


 int NFSD4_SLOT_CACHETHIS ;
 int WARN_ON_ONCE (int) ;
 int nfs_ok ;
 int nfsd4_has_session (TYPE_2__*) ;
 int nfserr_rep_too_big ;
 int nfserr_rep_too_big_to_cache ;
 int nfserr_resource ;

__be32 nfsd4_check_resp_size(struct nfsd4_compoundres *resp, u32 respsize)
{
 struct xdr_buf *buf = &resp->rqstp->rq_res;
 struct nfsd4_slot *slot = resp->cstate.slot;

 if (buf->len + respsize <= buf->buflen)
  return nfs_ok;
 if (!nfsd4_has_session(&resp->cstate))
  return nfserr_resource;
 if (slot->sl_flags & NFSD4_SLOT_CACHETHIS) {
  WARN_ON_ONCE(1);
  return nfserr_rep_too_big_to_cache;
 }
 return nfserr_rep_too_big;
}
