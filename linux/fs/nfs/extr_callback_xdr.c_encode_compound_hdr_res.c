
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct cb_compound_hdr_res {int * nops; int tag; int taglen; int * status; } ;
typedef scalar_t__ __be32 ;


 int NFS4ERR_RESOURCE ;
 scalar_t__ encode_string (struct xdr_stream*,int ,int ) ;
 scalar_t__ htonl (int ) ;
 scalar_t__ unlikely (int) ;
 void* xdr_reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static __be32 encode_compound_hdr_res(struct xdr_stream *xdr, struct cb_compound_hdr_res *hdr)
{
 __be32 status;

 hdr->status = xdr_reserve_space(xdr, 4);
 if (unlikely(hdr->status == ((void*)0)))
  return htonl(NFS4ERR_RESOURCE);
 status = encode_string(xdr, hdr->taglen, hdr->tag);
 if (unlikely(status != 0))
  return status;
 hdr->nops = xdr_reserve_space(xdr, 4);
 if (unlikely(hdr->nops == ((void*)0)))
  return htonl(NFS4ERR_RESOURCE);
 return 0;
}
