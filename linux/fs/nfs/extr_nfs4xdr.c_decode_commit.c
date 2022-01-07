
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct nfs_commitres {TYPE_1__* verf; } ;
struct TYPE_2__ {int verifier; } ;


 int OP_COMMIT ;
 int decode_op_hdr (struct xdr_stream*,int ) ;
 int decode_write_verifier (struct xdr_stream*,int *) ;

__attribute__((used)) static int decode_commit(struct xdr_stream *xdr, struct nfs_commitres *res)
{
 int status;

 status = decode_op_hdr(xdr, OP_COMMIT);
 if (!status)
  status = decode_write_verifier(xdr, &res->verf->verifier);
 return status;
}
