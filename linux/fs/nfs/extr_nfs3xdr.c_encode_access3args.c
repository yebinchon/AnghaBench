
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs3_accessargs {int access; int fh; } ;


 int encode_nfs_fh3 (struct xdr_stream*,int ) ;
 int encode_uint32 (struct xdr_stream*,int ) ;

__attribute__((used)) static void encode_access3args(struct xdr_stream *xdr,
          const struct nfs3_accessargs *args)
{
 encode_nfs_fh3(xdr, args->fh);
 encode_uint32(xdr, args->access);
}
