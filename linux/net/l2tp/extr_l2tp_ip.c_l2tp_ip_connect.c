
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int s_addr; } ;
struct sockaddr_l2tpip {int l2tp_conn_id; TYPE_1__ l2tp_addr; } ;
struct sockaddr {int dummy; } ;
struct sock {int sk_bind_node; } ;
struct TYPE_4__ {int peer_conn_id; } ;


 int EINVAL ;
 int SOCK_ZAPPED ;
 int __ip4_datagram_connect (struct sock*,struct sockaddr*,int) ;
 int hlist_del_init (int *) ;
 scalar_t__ ipv4_is_multicast (int ) ;
 int l2tp_ip_bind_table ;
 int l2tp_ip_lock ;
 TYPE_2__* l2tp_ip_sk (struct sock*) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int sk_add_bind_node (struct sock*,int *) ;
 scalar_t__ sock_flag (struct sock*,int ) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int l2tp_ip_connect(struct sock *sk, struct sockaddr *uaddr, int addr_len)
{
 struct sockaddr_l2tpip *lsa = (struct sockaddr_l2tpip *) uaddr;
 int rc;

 if (addr_len < sizeof(*lsa))
  return -EINVAL;

 if (ipv4_is_multicast(lsa->l2tp_addr.s_addr))
  return -EINVAL;

 lock_sock(sk);


 if (sock_flag(sk, SOCK_ZAPPED)) {
  rc = -EINVAL;
  goto out_sk;
 }

 rc = __ip4_datagram_connect(sk, uaddr, addr_len);
 if (rc < 0)
  goto out_sk;

 l2tp_ip_sk(sk)->peer_conn_id = lsa->l2tp_conn_id;

 write_lock_bh(&l2tp_ip_lock);
 hlist_del_init(&sk->sk_bind_node);
 sk_add_bind_node(sk, &l2tp_ip_bind_table);
 write_unlock_bh(&l2tp_ip_lock);

out_sk:
 release_sock(sk);

 return rc;
}
