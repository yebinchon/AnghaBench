
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
typedef int __be32 ;
struct TYPE_3__ {int type; scalar_t__ stringlen; int string; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int WARN_ON_ONCE (int) ;
 int nfserr_resource ;
 int nfserr_serverfault ;
 TYPE_1__* s2t_map ;
 int * xdr_encode_opaque (int *,int ,scalar_t__) ;
 int * xdr_reserve_space (struct xdr_stream*,scalar_t__) ;

__be32 nfs4_acl_write_who(struct xdr_stream *xdr, int who)
{
 __be32 *p;
 int i;

 for (i = 0; i < ARRAY_SIZE(s2t_map); i++) {
  if (s2t_map[i].type != who)
   continue;
  p = xdr_reserve_space(xdr, s2t_map[i].stringlen + 4);
  if (!p)
   return nfserr_resource;
  p = xdr_encode_opaque(p, s2t_map[i].string,
     s2t_map[i].stringlen);
  return 0;
 }
 WARN_ON_ONCE(1);
 return nfserr_serverfault;
}
