
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct TYPE_2__ {int netid_len; int addr_len; int addr; int netid; } ;
struct pnfs_ff_device_addr {int version; int minor_version; int rsize; int wsize; int tightly_coupled; TYPE_1__ netaddr; } ;
struct nfsd4_getdeviceinfo {struct pnfs_ff_device_addr* gd_device; } ;
typedef int __be32 ;


 void* cpu_to_be32 (int) ;
 int nfserr_resource ;
 int * xdr_encode_opaque (int *,int ,int) ;
 int * xdr_reserve_space (struct xdr_stream*,int) ;

__be32
nfsd4_ff_encode_getdeviceinfo(struct xdr_stream *xdr,
  struct nfsd4_getdeviceinfo *gdp)
{
 struct pnfs_ff_device_addr *da = gdp->gd_device;
 int len;
 int ver_len;
 int addr_len;
 __be32 *p;


 addr_len = 16 + da->netaddr.netid_len + da->netaddr.addr_len;
 ver_len = 20;

 len = 4 + ver_len + 4 + addr_len;

 p = xdr_reserve_space(xdr, len + sizeof(__be32));
 if (!p)
  return nfserr_resource;





 *p++ = cpu_to_be32(len);
 *p++ = cpu_to_be32(1);
 p = xdr_encode_opaque(p, da->netaddr.netid, da->netaddr.netid_len);
 p = xdr_encode_opaque(p, da->netaddr.addr, da->netaddr.addr_len);

 *p++ = cpu_to_be32(1);

 *p++ = cpu_to_be32(da->version);
 *p++ = cpu_to_be32(da->minor_version);
 *p++ = cpu_to_be32(da->rsize);
 *p++ = cpu_to_be32(da->wsize);
 *p++ = cpu_to_be32(da->tightly_coupled);

 return 0;
}
