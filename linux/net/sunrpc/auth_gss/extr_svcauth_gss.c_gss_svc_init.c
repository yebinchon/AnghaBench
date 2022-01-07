
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RPC_AUTH_GSS ;
 int svc_auth_register (int ,int *) ;
 int svcauthops_gss ;

int
gss_svc_init(void)
{
 return svc_auth_register(RPC_AUTH_GSS, &svcauthops_gss);
}
