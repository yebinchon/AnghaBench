
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xdr_stream {int dummy; } ;
struct nfs_fh {int size; int data; } ;


 int encode_netobj (struct xdr_stream*,int *,int ) ;

__attribute__((used)) static void encode_fh(struct xdr_stream *xdr, const struct nfs_fh *fh)
{
 encode_netobj(xdr, (u8 *)&fh->data, fh->size);
}
