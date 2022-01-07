
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct TYPE_2__ {int data; } ;
struct nfs42_layoutstat_devinfo {TYPE_1__ ld_private; } ;
typedef int nfs4_stateid ;


 int ff_layout_encode_ff_iostat_head (struct xdr_stream*,int const*,struct nfs42_layoutstat_devinfo const*) ;
 int ff_layout_encode_ff_layoutupdate (struct xdr_stream*,struct nfs42_layoutstat_devinfo const*,int ) ;

__attribute__((used)) static void
ff_layout_encode_ff_iostat(struct xdr_stream *xdr,
       const nfs4_stateid *stateid,
       const struct nfs42_layoutstat_devinfo *devinfo)
{
 ff_layout_encode_ff_iostat_head(xdr, stateid, devinfo);
 ff_layout_encode_ff_layoutupdate(xdr, devinfo,
   devinfo->ld_private.data);
}
