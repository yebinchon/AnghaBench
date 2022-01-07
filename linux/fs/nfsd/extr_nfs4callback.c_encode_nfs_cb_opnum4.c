
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
typedef enum nfs_cb_opnum4 { ____Placeholder_nfs_cb_opnum4 } nfs_cb_opnum4 ;
typedef int __be32 ;


 int cpu_to_be32 (int) ;
 int * xdr_reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static void encode_nfs_cb_opnum4(struct xdr_stream *xdr, enum nfs_cb_opnum4 op)
{
 __be32 *p;

 p = xdr_reserve_space(xdr, 4);
 *p = cpu_to_be32(op);
}
