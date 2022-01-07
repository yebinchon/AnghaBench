
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct TYPE_3__ {int data; } ;
typedef TYPE_1__ nfs4_verifier ;


 int NFS4_VERIFIER_SIZE ;
 int encode_opaque_fixed (struct xdr_stream*,int ,int ) ;

__attribute__((used)) static void encode_nfs4_verifier(struct xdr_stream *xdr, const nfs4_verifier *verf)
{
 encode_opaque_fixed(xdr, verf->data, NFS4_VERIFIER_SIZE);
}
