
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct socket {struct sock* sk; } ;
struct sockaddr_pn {scalar_t__ spn_family; int spn_resource; } ;
struct sockaddr {int dummy; } ;
struct sock {scalar_t__ sk_state; TYPE_1__* sk_prot; } ;
struct pn_sock {int resource; int sobject; } ;
struct TYPE_2__ {int (* bind ) (struct sock*,struct sockaddr*,int) ;int (* get_port ) (struct sock*,scalar_t__) ;int (* hash ) (struct sock*) ;} ;


 scalar_t__ AF_PHONET ;
 int EADDRNOTAVAIL ;
 int EAFNOSUPPORT ;
 int EINVAL ;
 scalar_t__ TCP_CLOSE ;
 int WARN_ON (int ) ;
 int lock_sock (struct sock*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ phonet_address_lookup (int ,scalar_t__) ;
 scalar_t__ pn_addr (int ) ;
 int pn_object (scalar_t__,scalar_t__) ;
 scalar_t__ pn_port (int ) ;
 struct pn_sock* pn_sk (struct sock*) ;
 int pn_sockaddr_get_object (struct sockaddr_pn*) ;
 int port_mutex ;
 int release_sock (struct sock*) ;
 int sk_hashed (struct sock*) ;
 int sock_net (struct sock*) ;
 int stub1 (struct sock*,struct sockaddr*,int) ;
 int stub2 (struct sock*,scalar_t__) ;
 int stub3 (struct sock*) ;

__attribute__((used)) static int pn_socket_bind(struct socket *sock, struct sockaddr *addr, int len)
{
 struct sock *sk = sock->sk;
 struct pn_sock *pn = pn_sk(sk);
 struct sockaddr_pn *spn = (struct sockaddr_pn *)addr;
 int err;
 u16 handle;
 u8 saddr;

 if (sk->sk_prot->bind)
  return sk->sk_prot->bind(sk, addr, len);

 if (len < sizeof(struct sockaddr_pn))
  return -EINVAL;
 if (spn->spn_family != AF_PHONET)
  return -EAFNOSUPPORT;

 handle = pn_sockaddr_get_object((struct sockaddr_pn *)addr);
 saddr = pn_addr(handle);
 if (saddr && phonet_address_lookup(sock_net(sk), saddr))
  return -EADDRNOTAVAIL;

 lock_sock(sk);
 if (sk->sk_state != TCP_CLOSE || pn_port(pn->sobject)) {
  err = -EINVAL;
  goto out;
 }
 WARN_ON(sk_hashed(sk));
 mutex_lock(&port_mutex);
 err = sk->sk_prot->get_port(sk, pn_port(handle));
 if (err)
  goto out_port;


 pn->sobject = pn_object(saddr, pn_port(pn->sobject));
 pn->resource = spn->spn_resource;


 err = sk->sk_prot->hash(sk);
out_port:
 mutex_unlock(&port_mutex);
out:
 release_sock(sk);
 return err;
}
