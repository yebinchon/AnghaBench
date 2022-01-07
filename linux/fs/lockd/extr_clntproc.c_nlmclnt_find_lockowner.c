
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_lockowner {int list; int host; int pid; int owner; int count; } ;
struct nlm_host {int h_lock; int h_lockowners; } ;
typedef int fl_owner_t ;


 int GFP_KERNEL ;
 int __nlm_alloc_pid (struct nlm_host*) ;
 struct nlm_lockowner* __nlmclnt_find_lockowner (struct nlm_host*,int ) ;
 int kfree (struct nlm_lockowner*) ;
 struct nlm_lockowner* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 int nlm_get_host (struct nlm_host*) ;
 int refcount_set (int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct nlm_lockowner *nlmclnt_find_lockowner(struct nlm_host *host, fl_owner_t owner)
{
 struct nlm_lockowner *res, *new = ((void*)0);

 spin_lock(&host->h_lock);
 res = __nlmclnt_find_lockowner(host, owner);
 if (res == ((void*)0)) {
  spin_unlock(&host->h_lock);
  new = kmalloc(sizeof(*new), GFP_KERNEL);
  spin_lock(&host->h_lock);
  res = __nlmclnt_find_lockowner(host, owner);
  if (res == ((void*)0) && new != ((void*)0)) {
   res = new;
   refcount_set(&new->count, 1);
   new->owner = owner;
   new->pid = __nlm_alloc_pid(host);
   new->host = nlm_get_host(host);
   list_add(&new->list, &host->h_lockowners);
   new = ((void*)0);
  }
 }
 spin_unlock(&host->h_lock);
 kfree(new);
 return res;
}
