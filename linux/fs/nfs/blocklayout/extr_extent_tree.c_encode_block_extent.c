
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pnfs_block_extent {long long be_f_offset; long long be_length; TYPE_2__* be_device; } ;
typedef int __be32 ;
struct TYPE_3__ {int data; } ;
struct TYPE_4__ {TYPE_1__ deviceid; } ;


 int NFS4_DEVICEID4_SIZE ;
 int PNFS_BLOCK_READWRITE_DATA ;
 long long SECTOR_SHIFT ;
 int cpu_to_be32 (int ) ;
 int * xdr_encode_hyper (int *,long long) ;
 int * xdr_encode_opaque_fixed (int *,int ,int ) ;

__attribute__((used)) static __be32 *encode_block_extent(struct pnfs_block_extent *be, __be32 *p)
{
 p = xdr_encode_opaque_fixed(p, be->be_device->deviceid.data,
   NFS4_DEVICEID4_SIZE);
 p = xdr_encode_hyper(p, be->be_f_offset << SECTOR_SHIFT);
 p = xdr_encode_hyper(p, be->be_length << SECTOR_SHIFT);
 p = xdr_encode_hyper(p, 0LL);
 *p++ = cpu_to_be32(PNFS_BLOCK_READWRITE_DATA);
 return p;
}
