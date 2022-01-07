
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs4_layoutreturn_args {int dummy; } ;
struct nfs4_flexfile_layoutreturn_args {int errors; int num_errors; } ;
typedef int __be32 ;


 int E2BIG ;
 int cpu_to_be32 (int ) ;
 int ff_layout_encode_ds_ioerr (struct xdr_stream*,int *) ;
 scalar_t__ unlikely (int) ;
 int * xdr_reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static int ff_layout_encode_ioerr(struct xdr_stream *xdr,
      const struct nfs4_layoutreturn_args *args,
      const struct nfs4_flexfile_layoutreturn_args *ff_args)
{
 __be32 *start;

 start = xdr_reserve_space(xdr, 4);
 if (unlikely(!start))
  return -E2BIG;

 *start = cpu_to_be32(ff_args->num_errors);

 return ff_layout_encode_ds_ioerr(xdr, &ff_args->errors);
}
