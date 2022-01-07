
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_host {int h_server; int h_reclaim; int h_granted; int h_lockowners; int h_count; int h_name; } ;


 int WARN_ON_ONCE (int) ;
 int dprintk (char*,int ) ;
 int list_empty (int *) ;
 int mutex_unlock (int *) ;
 int nlm_destroy_host_locked (struct nlm_host*) ;
 int nlm_host_mutex ;
 scalar_t__ refcount_dec_and_mutex_lock (int *,int *) ;

void nlmclnt_release_host(struct nlm_host *host)
{
 if (host == ((void*)0))
  return;

 dprintk("lockd: release client host %s\n", host->h_name);

 WARN_ON_ONCE(host->h_server);

 if (refcount_dec_and_mutex_lock(&host->h_count, &nlm_host_mutex)) {
  WARN_ON_ONCE(!list_empty(&host->h_lockowners));
  WARN_ON_ONCE(!list_empty(&host->h_granted));
  WARN_ON_ONCE(!list_empty(&host->h_reclaim));

  nlm_destroy_host_locked(host);
  mutex_unlock(&nlm_host_mutex);
 }
}
