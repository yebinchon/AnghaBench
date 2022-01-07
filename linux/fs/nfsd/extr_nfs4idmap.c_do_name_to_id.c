
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ cr_flavor; } ;
struct svc_rqst {TYPE_1__ rq_cred; } ;
typedef int __be32 ;


 scalar_t__ RPC_AUTH_GSS ;
 int idmap_name_to_id (struct svc_rqst*,int,char const*,int ,int *) ;
 scalar_t__ nfs4_disable_idmapping ;
 scalar_t__ numeric_name_to_id (struct svc_rqst*,int,char const*,int ,int *) ;

__attribute__((used)) static __be32
do_name_to_id(struct svc_rqst *rqstp, int type, const char *name, u32 namelen, u32 *id)
{
 if (nfs4_disable_idmapping && rqstp->rq_cred.cr_flavor < RPC_AUTH_GSS)
  if (numeric_name_to_id(rqstp, type, name, namelen, id))
   return 0;




 return idmap_name_to_id(rqstp, type, name, namelen, id);
}
