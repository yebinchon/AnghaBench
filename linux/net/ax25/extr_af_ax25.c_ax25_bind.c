
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sockaddr_ax25 {int dummy; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct TYPE_9__ {scalar_t__ sax25_family; int sax25_ndigis; int sax25_call; } ;
struct full_sockaddr_ax25 {TYPE_1__ fsa_ax25; int * fsa_digipeater; } ;
struct TYPE_10__ {int call; } ;
typedef TYPE_2__ ax25_uid_assoc ;
typedef int ax25_dev ;
struct TYPE_11__ {int * ax25_dev; int source_addr; } ;
typedef TYPE_3__ ax25_cb ;
typedef int ax25_address ;


 scalar_t__ AF_AX25 ;
 int CAP_NET_ADMIN ;
 int EACCES ;
 int EADDRNOTAVAIL ;
 int EINVAL ;
 int SOCK_ZAPPED ;
 int * ax25_addr_ax25dev (int *) ;
 int ax25_cb_add (TYPE_3__*) ;
 int ax25_fillin_cb (TYPE_3__*,int *) ;
 TYPE_2__* ax25_findbyuid (int ) ;
 scalar_t__ ax25_uid_policy ;
 int ax25_uid_put (TYPE_2__*) ;
 scalar_t__ ax25cmp (int *,int *) ;
 int capable (int ) ;
 int current_euid () ;
 int lock_sock (struct sock*) ;
 int null_ax25_address ;
 int release_sock (struct sock*) ;
 TYPE_3__* sk_to_ax25 (struct sock*) ;
 int sock_flag (struct sock*,int ) ;
 int sock_reset_flag (struct sock*,int ) ;

__attribute__((used)) static int ax25_bind(struct socket *sock, struct sockaddr *uaddr, int addr_len)
{
 struct sock *sk = sock->sk;
 struct full_sockaddr_ax25 *addr = (struct full_sockaddr_ax25 *)uaddr;
 ax25_dev *ax25_dev = ((void*)0);
 ax25_uid_assoc *user;
 ax25_address call;
 ax25_cb *ax25;
 int err = 0;

 if (addr_len != sizeof(struct sockaddr_ax25) &&
     addr_len != sizeof(struct full_sockaddr_ax25))



  if ((addr_len < sizeof(struct sockaddr_ax25) + sizeof(ax25_address) * 6) ||
      (addr_len > sizeof(struct full_sockaddr_ax25)))
   return -EINVAL;

 if (addr->fsa_ax25.sax25_family != AF_AX25)
  return -EINVAL;

 user = ax25_findbyuid(current_euid());
 if (user) {
  call = user->call;
  ax25_uid_put(user);
 } else {
  if (ax25_uid_policy && !capable(CAP_NET_ADMIN))
   return -EACCES;

  call = addr->fsa_ax25.sax25_call;
 }

 lock_sock(sk);

 ax25 = sk_to_ax25(sk);
 if (!sock_flag(sk, SOCK_ZAPPED)) {
  err = -EINVAL;
  goto out;
 }

 ax25->source_addr = call;




 if (ax25->ax25_dev != ((void*)0))
  goto done;

 if (addr_len > sizeof(struct sockaddr_ax25) && addr->fsa_ax25.sax25_ndigis == 1) {
  if (ax25cmp(&addr->fsa_digipeater[0], &null_ax25_address) != 0 &&
      (ax25_dev = ax25_addr_ax25dev(&addr->fsa_digipeater[0])) == ((void*)0)) {
   err = -EADDRNOTAVAIL;
   goto out;
  }
 } else {
  if ((ax25_dev = ax25_addr_ax25dev(&addr->fsa_ax25.sax25_call)) == ((void*)0)) {
   err = -EADDRNOTAVAIL;
   goto out;
  }
 }

 if (ax25_dev != ((void*)0))
  ax25_fillin_cb(ax25, ax25_dev);

done:
 ax25_cb_add(ax25);
 sock_reset_flag(sk, SOCK_ZAPPED);

out:
 release_sock(sk);

 return err;
}
