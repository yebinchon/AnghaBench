
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs_write_verifier {int data; } ;


 int NFS4_VERIFIER_SIZE ;
 int decode_opaque_fixed (struct xdr_stream*,int ,int ) ;

__attribute__((used)) static int decode_write_verifier(struct xdr_stream *xdr, struct nfs_write_verifier *verifier)
{
 return decode_opaque_fixed(xdr, verifier->data, NFS4_VERIFIER_SIZE);
}
