
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct pnfs_block_extent {int es; int soff; int len; int foff; int vol_id; } ;
struct nfsd4_layoutget {struct pnfs_block_extent* lg_content; } ;
struct nfsd4_deviceid {int dummy; } ;
typedef int __be64 ;
typedef int __be32 ;


 void* cpu_to_be32 (int) ;
 int nfserr_toosmall ;
 int * xdr_encode_hyper (int *,int ) ;
 int * xdr_encode_opaque_fixed (int *,int *,int) ;
 int * xdr_reserve_space (struct xdr_stream*,int) ;

__be32
nfsd4_block_encode_layoutget(struct xdr_stream *xdr,
  struct nfsd4_layoutget *lgp)
{
 struct pnfs_block_extent *b = lgp->lg_content;
 int len = sizeof(__be32) + 5 * sizeof(__be64) + sizeof(__be32);
 __be32 *p;

 p = xdr_reserve_space(xdr, sizeof(__be32) + len);
 if (!p)
  return nfserr_toosmall;

 *p++ = cpu_to_be32(len);
 *p++ = cpu_to_be32(1);

 p = xdr_encode_opaque_fixed(p, &b->vol_id,
   sizeof(struct nfsd4_deviceid));
 p = xdr_encode_hyper(p, b->foff);
 p = xdr_encode_hyper(p, b->len);
 p = xdr_encode_hyper(p, b->soff);
 *p++ = cpu_to_be32(b->es);
 return 0;
}
