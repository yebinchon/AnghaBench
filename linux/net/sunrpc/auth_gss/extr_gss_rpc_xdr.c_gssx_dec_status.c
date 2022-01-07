
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct gssx_status {int options; int server_ctx; int minor_status_string; int major_status_string; int minor_status; int mech; int major_status; } ;
typedef int __be32 ;


 int ENOSPC ;
 int dummy_dec_opt_array (struct xdr_stream*,int *) ;
 int gssx_dec_buffer (struct xdr_stream*,int *) ;
 scalar_t__ unlikely (int ) ;
 int * xdr_decode_hyper (int *,int *) ;
 int * xdr_inline_decode (struct xdr_stream*,int) ;

__attribute__((used)) static int gssx_dec_status(struct xdr_stream *xdr,
      struct gssx_status *status)
{
 __be32 *p;
 int err;


 p = xdr_inline_decode(xdr, 8);
 if (unlikely(p == ((void*)0)))
  return -ENOSPC;
 p = xdr_decode_hyper(p, &status->major_status);


 err = gssx_dec_buffer(xdr, &status->mech);
 if (err)
  return err;


 p = xdr_inline_decode(xdr, 8);
 if (unlikely(p == ((void*)0)))
  return -ENOSPC;
 p = xdr_decode_hyper(p, &status->minor_status);


 err = gssx_dec_buffer(xdr, &status->major_status_string);
 if (err)
  return err;


 err = gssx_dec_buffer(xdr, &status->minor_status_string);
 if (err)
  return err;


 err = gssx_dec_buffer(xdr, &status->server_ctx);
 if (err)
  return err;



 err = dummy_dec_opt_array(xdr, &status->options);

 return err;
}
