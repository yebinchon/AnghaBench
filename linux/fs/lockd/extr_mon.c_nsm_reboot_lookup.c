
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsm_handle {int sm_count; int sm_addrbuf; int sm_name; } ;
struct nlm_reboot {int mon; int len; int priv; } ;
struct net {int dummy; } ;
struct lockd_net {int nsm_handles; } ;


 int dprintk (char*,int ,int ,...) ;
 int lockd_net_id ;
 struct lockd_net* net_generic (struct net const*,int ) ;
 int nsm_lock ;
 struct nsm_handle* nsm_lookup_priv (int *,int *) ;
 int refcount_inc (int *) ;
 int refcount_read (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int ) ;

struct nsm_handle *nsm_reboot_lookup(const struct net *net,
    const struct nlm_reboot *info)
{
 struct nsm_handle *cached;
 struct lockd_net *ln = net_generic(net, lockd_net_id);

 spin_lock(&nsm_lock);

 cached = nsm_lookup_priv(&ln->nsm_handles, &info->priv);
 if (unlikely(cached == ((void*)0))) {
  spin_unlock(&nsm_lock);
  dprintk("lockd: never saw rebooted peer '%.*s' before\n",
    info->len, info->mon);
  return cached;
 }

 refcount_inc(&cached->sm_count);
 spin_unlock(&nsm_lock);

 dprintk("lockd: host %s (%s) rebooted, cnt %d\n",
   cached->sm_name, cached->sm_addrbuf,
   refcount_read(&cached->sm_count));
 return cached;
}
