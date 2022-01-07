
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nlmclnt_initdata {int nfs_version; int net; int nlmclnt_ops; int cred; int noresvport; int hostname; int protocol; int addrlen; int address; } ;
struct nlm_host {int h_nlmclnt_ops; int * h_rpcclnt; } ;


 int ENOLCK ;
 struct nlm_host* ERR_PTR (int) ;
 int lockd_down (int ) ;
 int lockd_up (int ,int ) ;
 int * nlm_bind_host (struct nlm_host*) ;
 struct nlm_host* nlmclnt_lookup_host (int ,int ,int ,int,int ,int ,int ,int ) ;
 int nlmclnt_release_host (struct nlm_host*) ;

struct nlm_host *nlmclnt_init(const struct nlmclnt_initdata *nlm_init)
{
 struct nlm_host *host;
 u32 nlm_version = (nlm_init->nfs_version == 2) ? 1 : 4;
 int status;

 status = lockd_up(nlm_init->net, nlm_init->cred);
 if (status < 0)
  return ERR_PTR(status);

 host = nlmclnt_lookup_host(nlm_init->address, nlm_init->addrlen,
       nlm_init->protocol, nlm_version,
       nlm_init->hostname, nlm_init->noresvport,
       nlm_init->net, nlm_init->cred);
 if (host == ((void*)0))
  goto out_nohost;
 if (host->h_rpcclnt == ((void*)0) && nlm_bind_host(host) == ((void*)0))
  goto out_nobind;

 host->h_nlmclnt_ops = nlm_init->nlmclnt_ops;
 return host;
out_nobind:
 nlmclnt_release_host(host);
out_nohost:
 lockd_down(nlm_init->net);
 return ERR_PTR(-ENOLCK);
}
