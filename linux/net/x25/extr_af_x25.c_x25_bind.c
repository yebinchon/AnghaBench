
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct TYPE_4__ {int * x25_addr; } ;
struct sockaddr_x25 {scalar_t__ sx25_family; TYPE_1__ sx25_addr; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct TYPE_6__ {int x25_addr; } ;
struct TYPE_5__ {TYPE_1__ source_addr; } ;


 scalar_t__ AF_X25 ;
 int EINVAL ;
 int SOCK_DEBUG (struct sock*,char*) ;
 int SOCK_ZAPPED ;
 int isdigit (int ) ;
 int lock_sock (struct sock*) ;
 TYPE_3__ null_x25_address ;
 int release_sock (struct sock*) ;
 scalar_t__ sock_flag (struct sock*,int ) ;
 int sock_reset_flag (struct sock*,int ) ;
 scalar_t__ strcmp (int *,int ) ;
 int strlen (int *) ;
 int x25_insert_socket (struct sock*) ;
 TYPE_2__* x25_sk (struct sock*) ;

__attribute__((used)) static int x25_bind(struct socket *sock, struct sockaddr *uaddr, int addr_len)
{
 struct sock *sk = sock->sk;
 struct sockaddr_x25 *addr = (struct sockaddr_x25 *)uaddr;
 int len, i, rc = 0;

 if (addr_len != sizeof(struct sockaddr_x25) ||
     addr->sx25_family != AF_X25) {
  rc = -EINVAL;
  goto out;
 }


 if (strcmp(addr->sx25_addr.x25_addr, null_x25_address.x25_addr)) {

  len = strlen(addr->sx25_addr.x25_addr);
  for (i = 0; i < len; i++) {
   if (!isdigit(addr->sx25_addr.x25_addr[i])) {
    rc = -EINVAL;
    goto out;
   }
  }
 }

 lock_sock(sk);
 if (sock_flag(sk, SOCK_ZAPPED)) {
  x25_sk(sk)->source_addr = addr->sx25_addr;
  x25_insert_socket(sk);
  sock_reset_flag(sk, SOCK_ZAPPED);
 } else {
  rc = -EINVAL;
 }
 release_sock(sk);
 SOCK_DEBUG(sk, "x25_bind: socket is bound\n");
out:
 return rc;
}
