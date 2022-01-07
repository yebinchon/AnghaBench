
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct pnfs_block_deviceaddr {int nr_volumes; int * volumes; } ;
struct nfsd4_getdeviceinfo {struct pnfs_block_deviceaddr* gd_device; } ;
typedef int __be32 ;


 void* cpu_to_be32 (int) ;
 int nfsd4_block_encode_volume (struct xdr_stream*,int *) ;
 int nfserr_resource ;
 int nfserrno (int) ;
 int * xdr_reserve_space (struct xdr_stream*,int) ;

__be32
nfsd4_block_encode_getdeviceinfo(struct xdr_stream *xdr,
  struct nfsd4_getdeviceinfo *gdp)
{
 struct pnfs_block_deviceaddr *dev = gdp->gd_device;
 int len = sizeof(__be32), ret, i;
 __be32 *p;

 p = xdr_reserve_space(xdr, len + sizeof(__be32));
 if (!p)
  return nfserr_resource;

 for (i = 0; i < dev->nr_volumes; i++) {
  ret = nfsd4_block_encode_volume(xdr, &dev->volumes[i]);
  if (ret < 0)
   return nfserrno(ret);
  len += ret;
 }





 *p++ = cpu_to_be32(len);
 *p++ = cpu_to_be32(dev->nr_volumes);
 return 0;
}
