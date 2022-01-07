
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct gssx_name {int display_name; } ;


 int dummy_enc_nameattr_array (struct xdr_stream*,int *) ;
 int dummy_enc_opt_array (struct xdr_stream*,int *) ;
 int gssx_enc_buffer (struct xdr_stream*,int *) ;
 int zero_name_attr_array ;
 int zero_netobj ;
 int zero_option_array ;

__attribute__((used)) static int gssx_enc_name(struct xdr_stream *xdr,
    struct gssx_name *name)
{
 int err;


 err = gssx_enc_buffer(xdr, &name->display_name);
 if (err)
  return err;


 err = gssx_enc_buffer(xdr, &zero_netobj);
 if (err)
  return err;


 err = gssx_enc_buffer(xdr, &zero_netobj);
 if (err)
  return err;


 err = gssx_enc_buffer(xdr, &zero_netobj);
 if (err)
  return err;




 err = dummy_enc_nameattr_array(xdr, &zero_name_attr_array);
 if (err)
  return err;




 err = dummy_enc_opt_array(xdr, &zero_option_array);

 return err;
}
