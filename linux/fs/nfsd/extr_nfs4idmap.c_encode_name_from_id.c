
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct xdr_stream {int dummy; } ;
struct TYPE_2__ {scalar_t__ cr_flavor; } ;
struct svc_rqst {TYPE_1__ rq_cred; } ;
typedef int __be32 ;


 scalar_t__ RPC_AUTH_GSS ;
 int encode_ascii_id (struct xdr_stream*,int ) ;
 int idmap_id_to_name (struct xdr_stream*,struct svc_rqst*,int,int ) ;
 scalar_t__ nfs4_disable_idmapping ;

__attribute__((used)) static __be32 encode_name_from_id(struct xdr_stream *xdr,
      struct svc_rqst *rqstp, int type, u32 id)
{
 if (nfs4_disable_idmapping && rqstp->rq_cred.cr_flavor < RPC_AUTH_GSS)
  return encode_ascii_id(xdr, id);
 return idmap_id_to_name(xdr, rqstp, type, id);
}
