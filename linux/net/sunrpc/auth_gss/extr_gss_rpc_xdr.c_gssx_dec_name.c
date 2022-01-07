
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct xdr_netobj {int len; } ;
struct gssx_option_array {int count; } ;
struct gssx_name_attr_array {int count; } ;
struct gssx_name {struct xdr_netobj display_name; } ;


 int dummy_dec_nameattr_array (struct xdr_stream*,struct gssx_name_attr_array*) ;
 int dummy_dec_opt_array (struct xdr_stream*,struct gssx_option_array*) ;
 int gssx_dec_buffer (struct xdr_stream*,struct xdr_netobj*) ;

__attribute__((used)) static int gssx_dec_name(struct xdr_stream *xdr,
    struct gssx_name *name)
{
 struct xdr_netobj dummy_netobj = { .len = 0 };
 struct gssx_name_attr_array dummy_name_attr_array = { .count = 0 };
 struct gssx_option_array dummy_option_array = { .count = 0 };
 int err;


 err = gssx_dec_buffer(xdr, &name->display_name);
 if (err)
  return err;


 err = gssx_dec_buffer(xdr, &dummy_netobj);
 if (err)
  return err;


 err = gssx_dec_buffer(xdr, &dummy_netobj);
 if (err)
  return err;


 err = gssx_dec_buffer(xdr, &dummy_netobj);
 if (err)
  return err;



 err = dummy_dec_nameattr_array(xdr, &dummy_name_attr_array);
 if (err)
  return err;



 err = dummy_dec_opt_array(xdr, &dummy_option_array);

 return err;
}
