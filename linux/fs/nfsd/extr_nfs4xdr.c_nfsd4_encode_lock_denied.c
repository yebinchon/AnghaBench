
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct xdr_stream {int dummy; } ;
struct xdr_netobj {int * data; scalar_t__ len; } ;
struct nfsd4_lock_denied {int ld_clientid; int ld_type; int ld_length; int ld_start; struct xdr_netobj ld_owner; } ;
typedef int __be32 ;


 scalar_t__ XDR_LEN (scalar_t__) ;
 void* cpu_to_be32 (int ) ;
 int kfree (int *) ;
 int nfserr_denied ;
 int nfserr_resource ;
 int * xdr_encode_hyper (int *,int ) ;
 int * xdr_encode_opaque (int *,int *,scalar_t__) ;
 int * xdr_encode_opaque_fixed (int *,int *,int) ;
 int * xdr_reserve_space (struct xdr_stream*,scalar_t__) ;

__attribute__((used)) static __be32
nfsd4_encode_lock_denied(struct xdr_stream *xdr, struct nfsd4_lock_denied *ld)
{
 struct xdr_netobj *conf = &ld->ld_owner;
 __be32 *p;

again:
 p = xdr_reserve_space(xdr, 32 + XDR_LEN(conf->len));
 if (!p) {




  if (conf->len) {
   kfree(conf->data);
   conf->len = 0;
   conf->data = ((void*)0);
   goto again;
  }
  return nfserr_resource;
 }
 p = xdr_encode_hyper(p, ld->ld_start);
 p = xdr_encode_hyper(p, ld->ld_length);
 *p++ = cpu_to_be32(ld->ld_type);
 if (conf->len) {
  p = xdr_encode_opaque_fixed(p, &ld->ld_clientid, 8);
  p = xdr_encode_opaque(p, conf->data, conf->len);
  kfree(conf->data);
 } else {
  p = xdr_encode_hyper(p, (u64)0);
  *p++ = cpu_to_be32(0);
 }
 return nfserr_denied;
}
