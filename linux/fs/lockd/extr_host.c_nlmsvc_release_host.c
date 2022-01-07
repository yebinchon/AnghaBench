
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_host {int h_count; int h_server; int h_name; } ;


 int WARN_ON_ONCE (int) ;
 int dprintk (char*,int ) ;
 int refcount_dec (int *) ;

void nlmsvc_release_host(struct nlm_host *host)
{
 if (host == ((void*)0))
  return;

 dprintk("lockd: release server host %s\n", host->h_name);

 WARN_ON_ONCE(!host->h_server);
 refcount_dec(&host->h_count);
}
