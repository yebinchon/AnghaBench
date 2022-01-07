
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
typedef enum nfs_opnum4 { ____Placeholder_nfs_opnum4 } nfs_opnum4 ;


 int __decode_op_hdr (struct xdr_stream*,int,int*) ;

__attribute__((used)) static int decode_op_hdr(struct xdr_stream *xdr, enum nfs_opnum4 expected)
{
 int retval;

 __decode_op_hdr(xdr, expected, &retval);
 return retval;
}
