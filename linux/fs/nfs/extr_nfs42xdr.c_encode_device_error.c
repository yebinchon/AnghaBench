
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct TYPE_2__ {int data; } ;
struct nfs42_device_error {int opnum; int status; TYPE_1__ dev_id; } ;
typedef void* __be32 ;


 scalar_t__ NFS4_DEVICEID4_SIZE ;
 void* cpu_to_be32 (int ) ;
 void** reserve_space (struct xdr_stream*,scalar_t__) ;
 void** xdr_encode_opaque_fixed (void**,int ,scalar_t__) ;

__attribute__((used)) static void encode_device_error(struct xdr_stream *xdr,
    const struct nfs42_device_error *error)
{
 __be32 *p;

 p = reserve_space(xdr, NFS4_DEVICEID4_SIZE + 2*4);
 p = xdr_encode_opaque_fixed(p, error->dev_id.data,
   NFS4_DEVICEID4_SIZE);
 *p++ = cpu_to_be32(error->status);
 *p = cpu_to_be32(error->opnum);
}
