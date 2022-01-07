
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipc_namespace {int count; } ;


 int free_ipc_ns (struct ipc_namespace*) ;
 int mq_clear_sbinfo (struct ipc_namespace*) ;
 int mq_lock ;
 int mq_put_mnt (struct ipc_namespace*) ;
 scalar_t__ refcount_dec_and_lock (int *,int *) ;
 int spin_unlock (int *) ;

void put_ipc_ns(struct ipc_namespace *ns)
{
 if (refcount_dec_and_lock(&ns->count, &mq_lock)) {
  mq_clear_sbinfo(ns);
  spin_unlock(&mq_lock);
  mq_put_mnt(ns);
  free_ipc_ns(ns);
 }
}
