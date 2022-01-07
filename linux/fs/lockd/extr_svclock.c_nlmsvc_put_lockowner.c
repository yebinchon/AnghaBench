
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nlm_lockowner {TYPE_1__* host; int list; int count; } ;
struct TYPE_2__ {int h_lock; } ;


 int kfree (struct nlm_lockowner*) ;
 int list_del (int *) ;
 int nlmsvc_release_host (TYPE_1__*) ;
 int refcount_dec_and_lock (int *,int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void nlmsvc_put_lockowner(struct nlm_lockowner *lockowner)
{
 if (!refcount_dec_and_lock(&lockowner->count, &lockowner->host->h_lock))
  return;
 list_del(&lockowner->list);
 spin_unlock(&lockowner->host->h_lock);
 nlmsvc_release_host(lockowner->host);
 kfree(lockowner);
}
