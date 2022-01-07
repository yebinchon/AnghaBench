
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct svc_rqst {int dummy; } ;
struct cb_getattrargs {int bitmap; int fh; } ;
typedef scalar_t__ __be32 ;


 scalar_t__ decode_bitmap (struct xdr_stream*,int ) ;
 scalar_t__ decode_fh (struct xdr_stream*,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static __be32 decode_getattr_args(struct svc_rqst *rqstp,
  struct xdr_stream *xdr, void *argp)
{
 struct cb_getattrargs *args = argp;
 __be32 status;

 status = decode_fh(xdr, &args->fh);
 if (unlikely(status != 0))
  return status;
 return decode_bitmap(xdr, args->bitmap);
}
