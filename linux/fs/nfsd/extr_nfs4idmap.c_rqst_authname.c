
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {struct auth_domain* rq_client; struct auth_domain* rq_gssclient; } ;
struct auth_domain {char* name; } ;



__attribute__((used)) static char *
rqst_authname(struct svc_rqst *rqstp)
{
 struct auth_domain *clp;

 clp = rqstp->rq_gssclient ? rqstp->rq_gssclient : rqstp->rq_client;
 return clp->name;
}
