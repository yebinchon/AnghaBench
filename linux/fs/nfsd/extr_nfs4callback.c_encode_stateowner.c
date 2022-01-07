
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct TYPE_4__ {int len; int data; } ;
struct nfs4_stateowner {TYPE_2__ so_owner; TYPE_1__* so_client; } ;
typedef int __be32 ;
struct TYPE_3__ {int cl_clientid; } ;


 int xdr_encode_opaque (int *,int ,int ) ;
 int * xdr_encode_opaque_fixed (int *,int *,int) ;
 int * xdr_reserve_space (struct xdr_stream*,int ) ;

__attribute__((used)) static void encode_stateowner(struct xdr_stream *xdr, struct nfs4_stateowner *so)
{
 __be32 *p;

 p = xdr_reserve_space(xdr, 8 + 4 + so->so_owner.len);
 p = xdr_encode_opaque_fixed(p, &so->so_client->cl_clientid, 8);
 xdr_encode_opaque(p, so->so_owner.data, so->so_owner.len);
}
