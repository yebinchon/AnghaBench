
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_timeout {unsigned long to_initval; unsigned long to_increment; unsigned long to_maxval; unsigned int to_retries; } ;
struct rpc_create_args {int flags; int saddress; int cred; int authflavor; int version; int * program; int servername; struct rpc_timeout* timeout; int addrsize; int address; int protocol; int net; } ;
struct rpc_clnt {int dummy; } ;
struct nlm_host {int h_mutex; int h_name; struct rpc_clnt* h_rpcclnt; scalar_t__ h_srcaddrlen; scalar_t__ h_noresvport; int h_server; int h_cred; int h_version; int h_addrlen; int h_proto; int net; scalar_t__ h_nextrebind; int h_addrbuf; } ;


 int IS_ERR (struct rpc_clnt*) ;
 scalar_t__ NLM_HOST_REBIND ;
 int RPC_AUTH_UNIX ;
 int RPC_CLNT_CREATE_AUTOBIND ;
 int RPC_CLNT_CREATE_HARDRTRY ;
 int RPC_CLNT_CREATE_NONPRIVPORT ;
 int RPC_CLNT_CREATE_NOPING ;
 int dprintk (char*,scalar_t__,...) ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nlm_addr (struct nlm_host*) ;
 int nlm_program ;
 int nlm_srcaddr (struct nlm_host*) ;
 unsigned long nlmsvc_timeout ;
 int printk (char*,int ) ;
 struct rpc_clnt* rpc_create (struct rpc_create_args*) ;
 int rpc_force_rebind (struct rpc_clnt*) ;
 scalar_t__ time_after_eq (scalar_t__,scalar_t__) ;

struct rpc_clnt *
nlm_bind_host(struct nlm_host *host)
{
 struct rpc_clnt *clnt;

 dprintk("lockd: nlm_bind_host %s (%s)\n",
   host->h_name, host->h_addrbuf);


 mutex_lock(&host->h_mutex);




 if ((clnt = host->h_rpcclnt) != ((void*)0)) {
  if (time_after_eq(jiffies, host->h_nextrebind)) {
   rpc_force_rebind(clnt);
   host->h_nextrebind = jiffies + NLM_HOST_REBIND;
   dprintk("lockd: next rebind in %lu jiffies\n",
     host->h_nextrebind - jiffies);
  }
 } else {
  unsigned long increment = nlmsvc_timeout;
  struct rpc_timeout timeparms = {
   .to_initval = increment,
   .to_increment = increment,
   .to_maxval = increment * 6UL,
   .to_retries = 5U,
  };
  struct rpc_create_args args = {
   .net = host->net,
   .protocol = host->h_proto,
   .address = nlm_addr(host),
   .addrsize = host->h_addrlen,
   .timeout = &timeparms,
   .servername = host->h_name,
   .program = &nlm_program,
   .version = host->h_version,
   .authflavor = RPC_AUTH_UNIX,
   .flags = (RPC_CLNT_CREATE_NOPING |
        RPC_CLNT_CREATE_AUTOBIND),
   .cred = host->h_cred,
  };






  if (!host->h_server)
   args.flags |= RPC_CLNT_CREATE_HARDRTRY;
  if (host->h_noresvport)
   args.flags |= RPC_CLNT_CREATE_NONPRIVPORT;
  if (host->h_srcaddrlen)
   args.saddress = nlm_srcaddr(host);

  clnt = rpc_create(&args);
  if (!IS_ERR(clnt))
   host->h_rpcclnt = clnt;
  else {
   printk("lockd: couldn't create RPC handle for %s\n", host->h_name);
   clnt = ((void*)0);
  }
 }

 mutex_unlock(&host->h_mutex);
 return clnt;
}
