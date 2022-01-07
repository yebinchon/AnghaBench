
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct TYPE_4__ {int uniquifier; int create_time; } ;
struct nfs_openargs {TYPE_2__ id; TYPE_1__* server; int clientid; int share_access; int seqid; } ;
typedef int __be32 ;
struct TYPE_3__ {int s_dev; } ;


 void* cpu_to_be32 (int) ;
 int encode_nfs4_seqid (struct xdr_stream*,int ) ;
 int encode_share_access (struct xdr_stream*,int ) ;
 int * reserve_space (struct xdr_stream*,int) ;
 int * xdr_encode_hyper (int *,int ) ;
 int * xdr_encode_opaque_fixed (int *,char*,int) ;

__attribute__((used)) static inline void encode_openhdr(struct xdr_stream *xdr, const struct nfs_openargs *arg)
{
 __be32 *p;




 encode_nfs4_seqid(xdr, arg->seqid);
 encode_share_access(xdr, arg->share_access);
 p = reserve_space(xdr, 36);
 p = xdr_encode_hyper(p, arg->clientid);
 *p++ = cpu_to_be32(24);
 p = xdr_encode_opaque_fixed(p, "open id:", 8);
 *p++ = cpu_to_be32(arg->server->s_dev);
 *p++ = cpu_to_be32(arg->id.uniquifier);
 xdr_encode_hyper(p, arg->id.create_time);
}
