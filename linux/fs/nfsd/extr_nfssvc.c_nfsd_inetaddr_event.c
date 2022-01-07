
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int s_addr; } ;
struct sockaddr_in {TYPE_2__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct notifier_block {int dummy; } ;
struct nfsd_net {int ntf_wq; int ntf_refcnt; scalar_t__ nfsd_serv; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct in_ifaddr {int ifa_local; TYPE_1__* ifa_dev; } ;
struct TYPE_3__ {struct net_device* dev; } ;


 int AF_INET ;
 unsigned long NETDEV_DOWN ;
 int NOTIFY_DONE ;
 int atomic_dec (int *) ;
 int atomic_inc_not_zero (int *) ;
 struct net* dev_net (struct net_device*) ;
 int dprintk (char*,int *) ;
 struct nfsd_net* net_generic (struct net*,int ) ;
 int nfsd_net_id ;
 int svc_age_temp_xprts_now (scalar_t__,struct sockaddr*) ;
 int wake_up (int *) ;

__attribute__((used)) static int nfsd_inetaddr_event(struct notifier_block *this, unsigned long event,
 void *ptr)
{
 struct in_ifaddr *ifa = (struct in_ifaddr *)ptr;
 struct net_device *dev = ifa->ifa_dev->dev;
 struct net *net = dev_net(dev);
 struct nfsd_net *nn = net_generic(net, nfsd_net_id);
 struct sockaddr_in sin;

 if ((event != NETDEV_DOWN) ||
     !atomic_inc_not_zero(&nn->ntf_refcnt))
  goto out;

 if (nn->nfsd_serv) {
  dprintk("nfsd_inetaddr_event: removed %pI4\n", &ifa->ifa_local);
  sin.sin_family = AF_INET;
  sin.sin_addr.s_addr = ifa->ifa_local;
  svc_age_temp_xprts_now(nn->nfsd_serv, (struct sockaddr *)&sin);
 }
 atomic_dec(&nn->ntf_refcnt);
 wake_up(&nn->ntf_wq);

out:
 return NOTIFY_DONE;
}
