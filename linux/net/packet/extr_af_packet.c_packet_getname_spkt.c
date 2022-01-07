
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sockaddr {int sa_data; int sa_family; } ;
struct sock {int dummy; } ;
struct net_device {int name; } ;
struct TYPE_2__ {int ifindex; } ;


 int AF_PACKET ;
 int EOPNOTSUPP ;
 struct net_device* dev_get_by_index_rcu (int ,int ) ;
 int memset (int ,int ,int) ;
 TYPE_1__* pkt_sk (struct sock*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int sock_net (struct sock*) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int packet_getname_spkt(struct socket *sock, struct sockaddr *uaddr,
          int peer)
{
 struct net_device *dev;
 struct sock *sk = sock->sk;

 if (peer)
  return -EOPNOTSUPP;

 uaddr->sa_family = AF_PACKET;
 memset(uaddr->sa_data, 0, sizeof(uaddr->sa_data));
 rcu_read_lock();
 dev = dev_get_by_index_rcu(sock_net(sk), pkt_sk(sk)->ifindex);
 if (dev)
  strlcpy(uaddr->sa_data, dev->name, sizeof(uaddr->sa_data));
 rcu_read_unlock();

 return sizeof(*uaddr);
}
