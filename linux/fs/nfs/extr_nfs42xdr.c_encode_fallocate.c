
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs42_falloc_args {int falloc_length; int falloc_offset; int falloc_stateid; } ;


 int encode_nfs4_stateid (struct xdr_stream*,int *) ;
 int encode_uint64 (struct xdr_stream*,int ) ;

__attribute__((used)) static void encode_fallocate(struct xdr_stream *xdr,
        const struct nfs42_falloc_args *args)
{
 encode_nfs4_stateid(xdr, &args->falloc_stateid);
 encode_uint64(xdr, args->falloc_offset);
 encode_uint64(xdr, args->falloc_length);
}
