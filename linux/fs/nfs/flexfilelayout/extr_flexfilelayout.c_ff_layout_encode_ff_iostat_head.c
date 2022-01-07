
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct TYPE_4__ {int data; } ;
struct nfs42_layoutstat_devinfo {TYPE_1__ dev_id; int write_bytes; int write_count; int read_bytes; int read_count; int length; int offset; } ;
struct TYPE_5__ {int data; } ;
typedef TYPE_2__ nfs4_stateid ;
typedef int __be32 ;


 int NFS4_DEVICEID4_SIZE ;
 int NFS4_STATEID_SIZE ;
 int encode_opaque_fixed (struct xdr_stream*,int ,int ) ;
 int * xdr_encode_hyper (int *,int ) ;
 int * xdr_reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static void
ff_layout_encode_ff_iostat_head(struct xdr_stream *xdr,
       const nfs4_stateid *stateid,
       const struct nfs42_layoutstat_devinfo *devinfo)
{
 __be32 *p;

 p = xdr_reserve_space(xdr, 8 + 8);
 p = xdr_encode_hyper(p, devinfo->offset);
 p = xdr_encode_hyper(p, devinfo->length);
 encode_opaque_fixed(xdr, stateid->data, NFS4_STATEID_SIZE);
 p = xdr_reserve_space(xdr, 4*8);
 p = xdr_encode_hyper(p, devinfo->read_count);
 p = xdr_encode_hyper(p, devinfo->read_bytes);
 p = xdr_encode_hyper(p, devinfo->write_count);
 p = xdr_encode_hyper(p, devinfo->write_bytes);
 encode_opaque_fixed(xdr, devinfo->dev_id.data, NFS4_DEVICEID4_SIZE);
}
