
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xdr_stream {TYPE_3__* buf; } ;
struct TYPE_4__ {int data; } ;
struct nfsd4_sequence {scalar_t__ status_flags; scalar_t__ maxslots; scalar_t__ slotid; scalar_t__ seqid; TYPE_1__ sessionid; } ;
struct TYPE_5__ {int data_offset; } ;
struct nfsd4_compoundres {TYPE_2__ cstate; struct xdr_stream xdr; } ;
typedef int __be32 ;
struct TYPE_6__ {int len; } ;


 scalar_t__ NFS4_MAX_SESSIONID_LEN ;
 void* cpu_to_be32 (scalar_t__) ;
 int nfserr_resource ;
 int * xdr_encode_opaque_fixed (int *,int ,scalar_t__) ;
 int * xdr_reserve_space (struct xdr_stream*,scalar_t__) ;

__attribute__((used)) static __be32
nfsd4_encode_sequence(struct nfsd4_compoundres *resp, __be32 nfserr,
        struct nfsd4_sequence *seq)
{
 struct xdr_stream *xdr = &resp->xdr;
 __be32 *p;

 p = xdr_reserve_space(xdr, NFS4_MAX_SESSIONID_LEN + 20);
 if (!p)
  return nfserr_resource;
 p = xdr_encode_opaque_fixed(p, seq->sessionid.data,
     NFS4_MAX_SESSIONID_LEN);
 *p++ = cpu_to_be32(seq->seqid);
 *p++ = cpu_to_be32(seq->slotid);

 *p++ = cpu_to_be32(seq->maxslots - 1);
 *p++ = cpu_to_be32(seq->maxslots - 1);
 *p++ = cpu_to_be32(seq->status_flags);

 resp->cstate.data_offset = xdr->buf->len;
 return 0;
}
