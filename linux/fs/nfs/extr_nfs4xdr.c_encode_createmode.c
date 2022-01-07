
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct TYPE_3__ {int attrs; int verifier; } ;
struct nfs_openargs {int createmode; TYPE_2__* server; int umask; int label; TYPE_1__ u; } ;
typedef int __be32 ;
struct TYPE_4__ {int exclcreat_bitmask; int attr_bitmask; } ;






 int cpu_to_be32 (int const) ;
 int encode_attrs (struct xdr_stream*,int ,int ,int *,TYPE_2__*,int ) ;
 int encode_nfs4_verifier (struct xdr_stream*,int *) ;
 int * reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static inline void encode_createmode(struct xdr_stream *xdr, const struct nfs_openargs *arg)
{
 __be32 *p;

 p = reserve_space(xdr, 4);
 switch(arg->createmode) {
 case 128:
  *p = cpu_to_be32(128);
  encode_attrs(xdr, arg->u.attrs, arg->label, &arg->umask,
    arg->server, arg->server->attr_bitmask);
  break;
 case 129:
  *p = cpu_to_be32(129);
  encode_attrs(xdr, arg->u.attrs, arg->label, &arg->umask,
    arg->server, arg->server->attr_bitmask);
  break;
 case 131:
  *p = cpu_to_be32(131);
  encode_nfs4_verifier(xdr, &arg->u.verifier);
  break;
 case 130:
  *p = cpu_to_be32(130);
  encode_nfs4_verifier(xdr, &arg->u.verifier);
  encode_attrs(xdr, arg->u.attrs, arg->label, &arg->umask,
    arg->server, arg->server->exclcreat_bitmask);
 }
}
