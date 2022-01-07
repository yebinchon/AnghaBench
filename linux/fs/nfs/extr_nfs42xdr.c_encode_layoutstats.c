
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_4__ {int data; } ;
struct nfs42_layoutstat_devinfo {TYPE_3__ ld_private; int layout_type; TYPE_1__ dev_id; int write_bytes; int write_count; int read_bytes; int read_count; int length; int offset; } ;
struct nfs42_layoutstat_args {int stateid; } ;
struct compound_hdr {int dummy; } ;
typedef int __be32 ;
struct TYPE_5__ {int (* encode ) (struct xdr_stream*,struct nfs42_layoutstat_args const*,TYPE_3__*) ;} ;


 int NFS4_DEVICEID4_SIZE ;
 int OP_LAYOUTSTATS ;
 int cpu_to_be32 (int ) ;
 int decode_layoutstats_maxsz ;
 int encode_nfs4_stateid (struct xdr_stream*,int *) ;
 int encode_op_hdr (struct xdr_stream*,int ,int ,struct compound_hdr*) ;
 int encode_uint32 (struct xdr_stream*,int ) ;
 int * reserve_space (struct xdr_stream*,int) ;
 int stub1 (struct xdr_stream*,struct nfs42_layoutstat_args const*,TYPE_3__*) ;
 int * xdr_encode_hyper (int *,int ) ;
 int * xdr_encode_opaque_fixed (int *,int ,int) ;

__attribute__((used)) static void encode_layoutstats(struct xdr_stream *xdr,
          const struct nfs42_layoutstat_args *args,
          struct nfs42_layoutstat_devinfo *devinfo,
          struct compound_hdr *hdr)
{
 __be32 *p;

 encode_op_hdr(xdr, OP_LAYOUTSTATS, decode_layoutstats_maxsz, hdr);
 p = reserve_space(xdr, 8 + 8);
 p = xdr_encode_hyper(p, devinfo->offset);
 p = xdr_encode_hyper(p, devinfo->length);
 encode_nfs4_stateid(xdr, &args->stateid);
 p = reserve_space(xdr, 4*8 + NFS4_DEVICEID4_SIZE + 4);
 p = xdr_encode_hyper(p, devinfo->read_count);
 p = xdr_encode_hyper(p, devinfo->read_bytes);
 p = xdr_encode_hyper(p, devinfo->write_count);
 p = xdr_encode_hyper(p, devinfo->write_bytes);
 p = xdr_encode_opaque_fixed(p, devinfo->dev_id.data,
   NFS4_DEVICEID4_SIZE);

 *p++ = cpu_to_be32(devinfo->layout_type);
 if (devinfo->ld_private.ops)
  devinfo->ld_private.ops->encode(xdr, args,
    &devinfo->ld_private);
 else
  encode_uint32(xdr, 0);
}
