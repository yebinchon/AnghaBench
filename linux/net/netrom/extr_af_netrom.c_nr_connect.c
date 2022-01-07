
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct socket {scalar_t__ state; struct sock* sk; } ;
struct sockaddr_ax25 {scalar_t__ sax25_family; int sax25_call; } ;
struct sockaddr {int dummy; } ;
struct sock {scalar_t__ sk_state; } ;
struct nr_sock {int my_index; int my_id; int state; int dest_addr; struct net_device* device; void* source_addr; void* user_addr; } ;
struct net_device {scalar_t__ dev_addr; } ;
struct full_sockaddr_ax25 {int dummy; } ;
struct TYPE_4__ {void* call; } ;
typedef TYPE_1__ ax25_uid_assoc ;
typedef void* ax25_address ;


 scalar_t__ AF_NETROM ;
 int CAP_NET_ADMIN ;
 int DEFINE_WAIT (int ) ;
 int ECONNREFUSED ;
 int EINPROGRESS ;
 int EINVAL ;
 int EISCONN ;
 int ENETUNREACH ;
 int EPERM ;
 int ERESTARTSYS ;
 int NR_STATE_1 ;
 int O_NONBLOCK ;
 int SOCK_ZAPPED ;
 void* SS_CONNECTED ;
 scalar_t__ SS_CONNECTING ;
 void* SS_UNCONNECTED ;
 int TASK_INTERRUPTIBLE ;
 scalar_t__ TCP_CLOSE ;
 scalar_t__ TCP_ESTABLISHED ;
 scalar_t__ TCP_SYN_SENT ;
 TYPE_1__* ax25_findbyuid (int ) ;
 scalar_t__ ax25_uid_policy ;
 int ax25_uid_put (TYPE_1__*) ;
 int capable (int ) ;
 int circuit ;
 int current ;
 int current_euid () ;
 int dev_put (struct net_device*) ;
 int finish_wait (int ,int *) ;
 int lock_sock (struct sock*) ;
 struct net_device* nr_dev_first () ;
 int nr_establish_data_link (struct sock*) ;
 int nr_find_next_circuit () ;
 int nr_insert_socket (struct sock*) ;
 struct nr_sock* nr_sk (struct sock*) ;
 int nr_start_heartbeat (struct sock*) ;
 int prepare_to_wait (int ,int *,int ) ;
 int release_sock (struct sock*) ;
 int schedule () ;
 int signal_pending (int ) ;
 int sk_sleep (struct sock*) ;
 int sock_error (struct sock*) ;
 scalar_t__ sock_flag (struct sock*,int ) ;
 int sock_reset_flag (struct sock*,int ) ;
 int wait ;

__attribute__((used)) static int nr_connect(struct socket *sock, struct sockaddr *uaddr,
 int addr_len, int flags)
{
 struct sock *sk = sock->sk;
 struct nr_sock *nr = nr_sk(sk);
 struct sockaddr_ax25 *addr = (struct sockaddr_ax25 *)uaddr;
 ax25_address *source = ((void*)0);
 ax25_uid_assoc *user;
 struct net_device *dev;
 int err = 0;

 lock_sock(sk);
 if (sk->sk_state == TCP_ESTABLISHED && sock->state == SS_CONNECTING) {
  sock->state = SS_CONNECTED;
  goto out_release;
 }

 if (sk->sk_state == TCP_CLOSE && sock->state == SS_CONNECTING) {
  sock->state = SS_UNCONNECTED;
  err = -ECONNREFUSED;
  goto out_release;
 }

 if (sk->sk_state == TCP_ESTABLISHED) {
  err = -EISCONN;
  goto out_release;
 }

 sk->sk_state = TCP_CLOSE;
 sock->state = SS_UNCONNECTED;

 if (addr_len != sizeof(struct sockaddr_ax25) && addr_len != sizeof(struct full_sockaddr_ax25)) {
  err = -EINVAL;
  goto out_release;
 }
 if (addr->sax25_family != AF_NETROM) {
  err = -EINVAL;
  goto out_release;
 }
 if (sock_flag(sk, SOCK_ZAPPED)) {
  sock_reset_flag(sk, SOCK_ZAPPED);

  if ((dev = nr_dev_first()) == ((void*)0)) {
   err = -ENETUNREACH;
   goto out_release;
  }
  source = (ax25_address *)dev->dev_addr;

  user = ax25_findbyuid(current_euid());
  if (user) {
   nr->user_addr = user->call;
   ax25_uid_put(user);
  } else {
   if (ax25_uid_policy && !capable(CAP_NET_ADMIN)) {
    dev_put(dev);
    err = -EPERM;
    goto out_release;
   }
   nr->user_addr = *source;
  }

  nr->source_addr = *source;
  nr->device = dev;

  dev_put(dev);
  nr_insert_socket(sk);
 }

 nr->dest_addr = addr->sax25_call;

 release_sock(sk);
 circuit = nr_find_next_circuit();
 lock_sock(sk);

 nr->my_index = circuit / 256;
 nr->my_id = circuit % 256;

 circuit++;


 sock->state = SS_CONNECTING;
 sk->sk_state = TCP_SYN_SENT;

 nr_establish_data_link(sk);

 nr->state = NR_STATE_1;

 nr_start_heartbeat(sk);


 if (sk->sk_state != TCP_ESTABLISHED && (flags & O_NONBLOCK)) {
  err = -EINPROGRESS;
  goto out_release;
 }





 if (sk->sk_state == TCP_SYN_SENT) {
  DEFINE_WAIT(wait);

  for (;;) {
   prepare_to_wait(sk_sleep(sk), &wait,
     TASK_INTERRUPTIBLE);
   if (sk->sk_state != TCP_SYN_SENT)
    break;
   if (!signal_pending(current)) {
    release_sock(sk);
    schedule();
    lock_sock(sk);
    continue;
   }
   err = -ERESTARTSYS;
   break;
  }
  finish_wait(sk_sleep(sk), &wait);
  if (err)
   goto out_release;
 }

 if (sk->sk_state != TCP_ESTABLISHED) {
  sock->state = SS_UNCONNECTED;
  err = sock_error(sk);
  goto out_release;
 }

 sock->state = SS_CONNECTED;

out_release:
 release_sock(sk);

 return err;
}
