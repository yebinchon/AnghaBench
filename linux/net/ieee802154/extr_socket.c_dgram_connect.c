
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_ieee802154 {scalar_t__ family; int addr; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct dgram_sock {int connected; int dst_addr; int bound; } ;


 scalar_t__ AF_IEEE802154 ;
 int EINVAL ;
 int ENETUNREACH ;
 struct dgram_sock* dgram_sk (struct sock*) ;
 int ieee802154_addr_from_sa (int *,int *) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;

__attribute__((used)) static int dgram_connect(struct sock *sk, struct sockaddr *uaddr,
    int len)
{
 struct sockaddr_ieee802154 *addr = (struct sockaddr_ieee802154 *)uaddr;
 struct dgram_sock *ro = dgram_sk(sk);
 int err = 0;

 if (len < sizeof(*addr))
  return -EINVAL;

 if (addr->family != AF_IEEE802154)
  return -EINVAL;

 lock_sock(sk);

 if (!ro->bound) {
  err = -ENETUNREACH;
  goto out;
 }

 ieee802154_addr_from_sa(&ro->dst_addr, &addr->addr);
 ro->connected = 1;

out:
 release_sock(sk);
 return err;
}
