
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gss_ctx {int mech_type; } ;
struct auth_domain {int dummy; } ;


 struct auth_domain* auth_domain_find (char*) ;
 char* gss_service_to_auth_domain_name (int ,int ) ;

__attribute__((used)) static struct auth_domain *
find_gss_auth_domain(struct gss_ctx *ctx, u32 svc)
{
 char *name;

 name = gss_service_to_auth_domain_name(ctx->mech_type, svc);
 if (!name)
  return ((void*)0);
 return auth_domain_find(name);
}
