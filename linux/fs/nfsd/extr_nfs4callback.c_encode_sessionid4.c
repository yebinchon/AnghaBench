
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct TYPE_2__ {int data; } ;
struct nfsd4_session {TYPE_1__ se_sessionid; } ;
typedef int __be32 ;


 int NFS4_MAX_SESSIONID_LEN ;
 int xdr_encode_opaque_fixed (int *,int ,int ) ;
 int * xdr_reserve_space (struct xdr_stream*,int ) ;

__attribute__((used)) static void encode_sessionid4(struct xdr_stream *xdr,
         const struct nfsd4_session *session)
{
 __be32 *p;

 p = xdr_reserve_space(xdr, NFS4_MAX_SESSIONID_LEN);
 xdr_encode_opaque_fixed(p, session->se_sessionid.data,
     NFS4_MAX_SESSIONID_LEN);
}
