
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOVERFLOW ;
 int UINT_MAX ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int masq_dev_notifier ;
 int masq_inet_notifier ;
 int masq_mutex ;
 int masq_refcnt ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nf_nat_masquerade_ipv6_register_notifier () ;
 int register_inetaddr_notifier (int *) ;
 int register_netdevice_notifier (int *) ;
 int unregister_inetaddr_notifier (int *) ;
 int unregister_netdevice_notifier (int *) ;

int nf_nat_masquerade_inet_register_notifiers(void)
{
 int ret = 0;

 mutex_lock(&masq_mutex);
 if (WARN_ON_ONCE(masq_refcnt == UINT_MAX)) {
  ret = -EOVERFLOW;
  goto out_unlock;
 }


 if (++masq_refcnt > 1)
  goto out_unlock;


 ret = register_netdevice_notifier(&masq_dev_notifier);
 if (ret)
  goto err_dec;

 ret = register_inetaddr_notifier(&masq_inet_notifier);
 if (ret)
  goto err_unregister;

 ret = nf_nat_masquerade_ipv6_register_notifier();
 if (ret)
  goto err_unreg_inet;

 mutex_unlock(&masq_mutex);
 return ret;
err_unreg_inet:
 unregister_inetaddr_notifier(&masq_inet_notifier);
err_unregister:
 unregister_netdevice_notifier(&masq_dev_notifier);
err_dec:
 masq_refcnt--;
out_unlock:
 mutex_unlock(&masq_mutex);
 return ret;
}
