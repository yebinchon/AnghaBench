
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* cr_principal; } ;
struct svc_rqst {TYPE_2__* rq_authop; TYPE_1__ rq_cred; } ;
struct nfs_client {scalar_t__ cl_minorversion; int cl_hostname; int cl_acceptor; } ;
struct TYPE_4__ {scalar_t__ flavour; } ;


 scalar_t__ RPC_AUTH_GSS ;
 scalar_t__ memcmp (char*,char*,int) ;
 scalar_t__ strcmp (char*,int ) ;

int
check_gss_callback_principal(struct nfs_client *clp, struct svc_rqst *rqstp)
{
 char *p = rqstp->rq_cred.cr_principal;

 if (rqstp->rq_authop->flavour != RPC_AUTH_GSS)
  return 1;


 if (clp->cl_minorversion != 0)
  return 0;




 if (p == ((void*)0))
  return 0;





 if (clp->cl_acceptor)
  return !strcmp(p, clp->cl_acceptor);
 if (memcmp(p, "nfs@", 4) != 0)
  return 0;
 p += 4;
 if (strcmp(p, clp->cl_hostname) != 0)
  return 0;
 return 1;
}
