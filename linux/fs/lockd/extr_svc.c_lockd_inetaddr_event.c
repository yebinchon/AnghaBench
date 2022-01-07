
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct notifier_block {int dummy; } ;
struct in_ifaddr {int ifa_local; } ;
struct TYPE_4__ {int rq_server; } ;


 int AF_INET ;
 unsigned long NETDEV_DOWN ;
 int NOTIFY_DONE ;
 int atomic_dec (int *) ;
 int atomic_inc_not_zero (int *) ;
 int dprintk (char*,int *) ;
 int nlm_ntf_refcnt ;
 int nlm_ntf_wq ;
 TYPE_2__* nlmsvc_rqst ;
 int svc_age_temp_xprts_now (int ,struct sockaddr*) ;
 int wake_up (int *) ;

__attribute__((used)) static int lockd_inetaddr_event(struct notifier_block *this,
 unsigned long event, void *ptr)
{
 struct in_ifaddr *ifa = (struct in_ifaddr *)ptr;
 struct sockaddr_in sin;

 if ((event != NETDEV_DOWN) ||
     !atomic_inc_not_zero(&nlm_ntf_refcnt))
  goto out;

 if (nlmsvc_rqst) {
  dprintk("lockd_inetaddr_event: removed %pI4\n",
   &ifa->ifa_local);
  sin.sin_family = AF_INET;
  sin.sin_addr.s_addr = ifa->ifa_local;
  svc_age_temp_xprts_now(nlmsvc_rqst->rq_server,
   (struct sockaddr *)&sin);
 }
 atomic_dec(&nlm_ntf_refcnt);
 wake_up(&nlm_ntf_wq);

out:
 return NOTIFY_DONE;
}
