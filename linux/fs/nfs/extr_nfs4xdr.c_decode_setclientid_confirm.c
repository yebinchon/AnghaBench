
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;


 int OP_SETCLIENTID_CONFIRM ;
 int decode_op_hdr (struct xdr_stream*,int ) ;

__attribute__((used)) static int decode_setclientid_confirm(struct xdr_stream *xdr)
{
 return decode_op_hdr(xdr, OP_SETCLIENTID_CONFIRM);
}
