
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_cred {scalar_t__ cr_flavor; } ;


 scalar_t__ RPC_AUTH_MAXFLAVOR ;

__attribute__((used)) static bool is_gss_cred(struct svc_cred *cr)
{

 return (cr->cr_flavor > RPC_AUTH_MAXFLAVOR);
}
