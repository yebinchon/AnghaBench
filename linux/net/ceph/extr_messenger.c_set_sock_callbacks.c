
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {int sk_state_change; int sk_write_space; int sk_data_ready; struct ceph_connection* sk_user_data; } ;
struct ceph_connection {int dummy; } ;


 int ceph_sock_data_ready ;
 int ceph_sock_state_change ;
 int ceph_sock_write_space ;

__attribute__((used)) static void set_sock_callbacks(struct socket *sock,
          struct ceph_connection *con)
{
 struct sock *sk = sock->sk;
 sk->sk_user_data = con;
 sk->sk_data_ready = ceph_sock_data_ready;
 sk->sk_write_space = ceph_sock_write_space;
 sk->sk_state_change = ceph_sock_state_change;
}
