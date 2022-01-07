
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RPC_AUTH_GSS ;
 int svc_auth_unregister (int ) ;

void
gss_svc_shutdown(void)
{
 svc_auth_unregister(RPC_AUTH_GSS);
}
