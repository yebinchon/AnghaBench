
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs4_deviceid {int dummy; } ;
typedef int __be32 ;


 int ENOBUFS ;
 int NFS4_DEVICEID4_SIZE ;
 int memcpy (struct nfs4_deviceid*,int *,int ) ;
 int nfs4_print_deviceid (struct nfs4_deviceid*) ;
 scalar_t__ unlikely (int) ;
 int * xdr_inline_decode (struct xdr_stream*,int ) ;

__attribute__((used)) static int decode_deviceid(struct xdr_stream *xdr, struct nfs4_deviceid *devid)
{
 __be32 *p;

 p = xdr_inline_decode(xdr, NFS4_DEVICEID4_SIZE);
 if (unlikely(!p))
  return -ENOBUFS;
 memcpy(devid, p, NFS4_DEVICEID4_SIZE);
 nfs4_print_deviceid(devid);
 return 0;
}
