
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct gssx_option {int value; int option; } ;


 int gssx_enc_buffer (struct xdr_stream*,int *) ;

__attribute__((used)) static int gssx_enc_option(struct xdr_stream *xdr,
      struct gssx_option *opt)
{
 int err;

 err = gssx_enc_buffer(xdr, &opt->option);
 if (err)
  return err;
 err = gssx_enc_buffer(xdr, &opt->value);
 return err;
}
