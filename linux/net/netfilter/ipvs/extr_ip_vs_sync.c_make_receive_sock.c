
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int sin_addr; } ;
struct TYPE_9__ {int sin6_addr; } ;
union ipvs_sockaddr {TYPE_3__ in; TYPE_2__ in6; } ;
struct socket {TYPE_4__* sk; TYPE_1__* ops; } ;
struct sockaddr {int dummy; } ;
struct TYPE_12__ {scalar_t__ mcast_af; } ;
struct netns_ipvs {TYPE_7__ bcfg; int net; } ;
struct net_device {int ifindex; } ;
struct TYPE_11__ {int sk_bound_dev_if; int sk_reuse; } ;
struct TYPE_8__ {int (* bind ) (struct socket*,struct sockaddr*,int) ;} ;


 scalar_t__ AF_INET6 ;
 int IPPROTO_UDP ;
 int SK_CAN_REUSE ;
 int SOCK_DGRAM ;
 int get_mcast_sockaddr (union ipvs_sockaddr*,int*,TYPE_7__*,int) ;
 int join_mcast_group (TYPE_4__*,int *,struct net_device*) ;
 int join_mcast_group6 (TYPE_4__*,int *,struct net_device*) ;
 int pr_err (char*) ;
 int set_sock_size (TYPE_4__*,int ,int) ;
 int sock_create_kern (int ,scalar_t__,int ,int ,struct socket**) ;
 int stub1 (struct socket*,struct sockaddr*,int) ;
 int sysctl_sync_sock_size (struct netns_ipvs*) ;

__attribute__((used)) static int make_receive_sock(struct netns_ipvs *ipvs, int id,
        struct net_device *dev, struct socket **sock_ret)
{

 union ipvs_sockaddr mcast_addr;
 struct socket *sock;
 int result, salen;


 result = sock_create_kern(ipvs->net, ipvs->bcfg.mcast_af, SOCK_DGRAM,
      IPPROTO_UDP, &sock);
 if (result < 0) {
  pr_err("Error during creation of socket; terminating\n");
  goto error;
 }
 *sock_ret = sock;

 sock->sk->sk_reuse = SK_CAN_REUSE;
 result = sysctl_sync_sock_size(ipvs);
 if (result > 0)
  set_sock_size(sock->sk, 0, result);

 get_mcast_sockaddr(&mcast_addr, &salen, &ipvs->bcfg, id);
 sock->sk->sk_bound_dev_if = dev->ifindex;
 result = sock->ops->bind(sock, (struct sockaddr *)&mcast_addr, salen);
 if (result < 0) {
  pr_err("Error binding to the multicast addr\n");
  goto error;
 }
  result = join_mcast_group(sock->sk, &mcast_addr.in.sin_addr,
       dev);
 if (result < 0) {
  pr_err("Error joining to the multicast group\n");
  goto error;
 }

 return 0;

error:
 return result;
}
