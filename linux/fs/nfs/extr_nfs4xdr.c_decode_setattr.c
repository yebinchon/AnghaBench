
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;


 int EIO ;
 int OP_SETATTR ;
 scalar_t__ decode_bitmap4 (struct xdr_stream*,int *,int ) ;
 int decode_op_hdr (struct xdr_stream*,int ) ;

__attribute__((used)) static int decode_setattr(struct xdr_stream *xdr)
{
 int status;

 status = decode_op_hdr(xdr, OP_SETATTR);
 if (status)
  return status;
 if (decode_bitmap4(xdr, ((void*)0), 0) >= 0)
  return 0;
 return -EIO;
}
