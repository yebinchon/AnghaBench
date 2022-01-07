
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * mnt; int * dentry; } ;
struct unix_sock {int peer_wake; int peer_wait; int bindlock; int iolock; int link; int inflight; int lock; TYPE_2__ path; } ;
struct socket {int dummy; } ;
struct sock {int sk_prot; int sk_destruct; int sk_max_ack_backlog; int sk_write_space; int sk_allocation; } ;
struct TYPE_3__ {int sysctl_max_dgram_qlen; } ;
struct net {TYPE_1__ unx; } ;


 int GFP_KERNEL ;
 int GFP_KERNEL_ACCOUNT ;
 int INIT_LIST_HEAD (int *) ;
 int PF_UNIX ;
 int atomic_long_dec (int *) ;
 int atomic_long_inc (int *) ;
 int atomic_long_read (int *) ;
 int atomic_long_set (int *,int ) ;
 int get_max_files () ;
 int init_waitqueue_func_entry (int *,int ) ;
 int init_waitqueue_head (int *) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int mutex_init (int *) ;
 struct sock* sk_alloc (struct net*,int ,int ,int *,int) ;
 int sock_init_data (struct socket*,struct sock*) ;
 int sock_net (struct sock*) ;
 int sock_prot_inuse_add (int ,int ,int) ;
 int spin_lock_init (int *) ;
 int unix_dgram_peer_wake_relay ;
 int unix_insert_socket (int ,struct sock*) ;
 int unix_nr_socks ;
 int unix_proto ;
 struct unix_sock* unix_sk (struct sock*) ;
 int unix_sock_destructor ;
 int unix_sockets_unbound (struct sock*) ;
 int unix_write_space ;

__attribute__((used)) static struct sock *unix_create1(struct net *net, struct socket *sock, int kern)
{
 struct sock *sk = ((void*)0);
 struct unix_sock *u;

 atomic_long_inc(&unix_nr_socks);
 if (atomic_long_read(&unix_nr_socks) > 2 * get_max_files())
  goto out;

 sk = sk_alloc(net, PF_UNIX, GFP_KERNEL, &unix_proto, kern);
 if (!sk)
  goto out;

 sock_init_data(sock, sk);

 sk->sk_allocation = GFP_KERNEL_ACCOUNT;
 sk->sk_write_space = unix_write_space;
 sk->sk_max_ack_backlog = net->unx.sysctl_max_dgram_qlen;
 sk->sk_destruct = unix_sock_destructor;
 u = unix_sk(sk);
 u->path.dentry = ((void*)0);
 u->path.mnt = ((void*)0);
 spin_lock_init(&u->lock);
 atomic_long_set(&u->inflight, 0);
 INIT_LIST_HEAD(&u->link);
 mutex_init(&u->iolock);
 mutex_init(&u->bindlock);
 init_waitqueue_head(&u->peer_wait);
 init_waitqueue_func_entry(&u->peer_wake, unix_dgram_peer_wake_relay);
 unix_insert_socket(unix_sockets_unbound(sk), sk);
out:
 if (sk == ((void*)0))
  atomic_long_dec(&unix_nr_socks);
 else {
  local_bh_disable();
  sock_prot_inuse_add(sock_net(sk), sk->sk_prot, 1);
  local_bh_enable();
 }
 return sk;
}
