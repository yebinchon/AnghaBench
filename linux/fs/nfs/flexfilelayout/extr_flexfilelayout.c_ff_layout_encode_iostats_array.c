
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct nfs4_layoutreturn_args {TYPE_1__* layout; } ;
struct nfs4_flexfile_layoutreturn_args {int num_dev; int * devinfo; } ;
typedef int __be32 ;
struct TYPE_2__ {int plh_stateid; } ;


 int cpu_to_be32 (int) ;
 int ff_layout_encode_ff_iostat (struct xdr_stream*,int *,int *) ;
 int * xdr_reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static void ff_layout_encode_iostats_array(struct xdr_stream *xdr,
  const struct nfs4_layoutreturn_args *args,
  struct nfs4_flexfile_layoutreturn_args *ff_args)
{
 __be32 *p;
 int i;

 p = xdr_reserve_space(xdr, 4);
 *p = cpu_to_be32(ff_args->num_dev);
 for (i = 0; i < ff_args->num_dev; i++)
  ff_layout_encode_ff_iostat(xdr,
    &args->layout->plh_stateid,
    &ff_args->devinfo[i]);
}
