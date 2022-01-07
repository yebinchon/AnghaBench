
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct gssx_cred {int needs_release; int cred_handle_reference; int elements; int desired_name; } ;


 int dummy_enc_credel_array (struct xdr_stream*,int *) ;
 int gssx_enc_bool (struct xdr_stream*,int ) ;
 int gssx_enc_buffer (struct xdr_stream*,int *) ;
 int gssx_enc_name (struct xdr_stream*,int *) ;

__attribute__((used)) static int gssx_enc_cred(struct xdr_stream *xdr,
    struct gssx_cred *cred)
{
 int err;


 err = gssx_enc_name(xdr, &cred->desired_name);
 if (err)
  return err;


 err = dummy_enc_credel_array(xdr, &cred->elements);
 if (err)
  return err;


 err = gssx_enc_buffer(xdr, &cred->cred_handle_reference);
 if (err)
  return err;


 err = gssx_enc_bool(xdr, cred->needs_release);

 return err;
}
