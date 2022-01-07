
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct gssx_name_attr {int extensions; int value; int attr; } ;


 int dummy_dec_opt_array (struct xdr_stream*,int *) ;
 int gssx_dec_buffer (struct xdr_stream*,int *) ;

__attribute__((used)) static int gssx_dec_name_attr(struct xdr_stream *xdr,
        struct gssx_name_attr *attr)
{
 int err;


 err = gssx_dec_buffer(xdr, &attr->attr);
 if (err)
  return err;


 err = gssx_dec_buffer(xdr, &attr->value);
 if (err)
  return err;


 err = dummy_dec_opt_array(xdr, &attr->extensions);

 return err;
}
