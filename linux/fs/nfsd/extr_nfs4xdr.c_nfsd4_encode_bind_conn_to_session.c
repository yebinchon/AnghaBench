
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct nfsd4_compoundres {struct xdr_stream xdr; } ;
struct TYPE_2__ {int data; } ;
struct nfsd4_bind_conn_to_session {int dir; TYPE_1__ sessionid; } ;
typedef int __be32 ;


 scalar_t__ NFS4_MAX_SESSIONID_LEN ;
 void* cpu_to_be32 (int ) ;
 int nfserr_resource ;
 int * xdr_encode_opaque_fixed (int *,int ,scalar_t__) ;
 int * xdr_reserve_space (struct xdr_stream*,scalar_t__) ;

__attribute__((used)) static __be32 nfsd4_encode_bind_conn_to_session(struct nfsd4_compoundres *resp, __be32 nfserr, struct nfsd4_bind_conn_to_session *bcts)
{
 struct xdr_stream *xdr = &resp->xdr;
 __be32 *p;

 p = xdr_reserve_space(xdr, NFS4_MAX_SESSIONID_LEN + 8);
 if (!p)
  return nfserr_resource;
 p = xdr_encode_opaque_fixed(p, bcts->sessionid.data,
     NFS4_MAX_SESSIONID_LEN);
 *p++ = cpu_to_be32(bcts->dir);

 *p++ = cpu_to_be32(0);
 return 0;
}
