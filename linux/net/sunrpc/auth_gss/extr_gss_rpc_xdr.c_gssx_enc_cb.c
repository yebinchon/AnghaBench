
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct gssx_cb {int application_data; int acceptor_address; int acceptor_addrtype; int initiator_address; int initiator_addrtype; } ;
typedef int __be32 ;


 int ENOSPC ;
 int gssx_enc_buffer (struct xdr_stream*,int *) ;
 int * xdr_encode_hyper (int *,int ) ;
 int * xdr_reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static int gssx_enc_cb(struct xdr_stream *xdr, struct gssx_cb *cb)
{
 __be32 *p;
 int err;


 p = xdr_reserve_space(xdr, 8);
 if (!p)
  return -ENOSPC;
 p = xdr_encode_hyper(p, cb->initiator_addrtype);


 err = gssx_enc_buffer(xdr, &cb->initiator_address);
 if (err)
  return err;


 p = xdr_reserve_space(xdr, 8);
 if (!p)
  return -ENOSPC;
 p = xdr_encode_hyper(p, cb->acceptor_addrtype);


 err = gssx_enc_buffer(xdr, &cb->acceptor_address);
 if (err)
  return err;


 err = gssx_enc_buffer(xdr, &cb->application_data);

 return err;
}
