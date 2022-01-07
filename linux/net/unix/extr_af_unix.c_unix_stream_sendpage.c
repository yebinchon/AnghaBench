
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct TYPE_5__ {int lock; } ;
struct sock {scalar_t__ sk_state; int sk_shutdown; int (* sk_data_ready ) (struct sock*) ;TYPE_2__ sk_receive_queue; int sk_wmem_alloc; } ;
struct sk_buff {size_t len; size_t data_len; size_t truesize; } ;
struct scm_cookie {int dummy; } ;
struct page {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_4__ {int iolock; } ;


 int EAGAIN ;
 size_t ENOTCONN ;
 size_t EOPNOTSUPP ;
 int EPIPE ;
 int ERESTARTSYS ;
 int MSG_DONTWAIT ;
 int MSG_NOSIGNAL ;
 int MSG_OOB ;
 int RCV_SHUTDOWN ;
 int SEND_SHUTDOWN ;
 int SIGPIPE ;
 int SOCK_DEAD ;
 scalar_t__ TCP_ESTABLISHED ;
 int __skb_queue_tail (TYPE_2__*,struct sk_buff*) ;
 int consume_skb (struct sk_buff*) ;
 int current ;
 int kfree_skb (struct sk_buff*) ;
 int maybe_init_creds (struct scm_cookie*,struct socket*,struct sock*) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int refcount_add (size_t,int *) ;
 int scm_destroy (struct scm_cookie*) ;
 int send_sig (int ,int ,int ) ;
 scalar_t__ skb_append_pagefrags (struct sk_buff*,struct page*,int,size_t) ;
 struct sk_buff* skb_peek_tail (TYPE_2__*) ;
 struct sk_buff* sock_alloc_send_pskb (struct sock*,int ,int ,int,int*,int ) ;
 scalar_t__ sock_flag (struct sock*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct sock*) ;
 struct sock* unix_peer (struct sock*) ;
 int unix_scm_to_skb (struct scm_cookie*,struct sk_buff*,int) ;
 TYPE_1__* unix_sk (struct sock*) ;
 int unix_skb_scm_eq (struct sk_buff*,struct scm_cookie*) ;
 int unix_state_lock (struct sock*) ;
 int unix_state_unlock (struct sock*) ;

__attribute__((used)) static ssize_t unix_stream_sendpage(struct socket *socket, struct page *page,
        int offset, size_t size, int flags)
{
 int err;
 bool send_sigpipe = 0;
 bool init_scm = 1;
 struct scm_cookie scm;
 struct sock *other, *sk = socket->sk;
 struct sk_buff *skb, *newskb = ((void*)0), *tail = ((void*)0);

 if (flags & MSG_OOB)
  return -EOPNOTSUPP;

 other = unix_peer(sk);
 if (!other || sk->sk_state != TCP_ESTABLISHED)
  return -ENOTCONN;

 if (0) {
alloc_skb:
  unix_state_unlock(other);
  mutex_unlock(&unix_sk(other)->iolock);
  newskb = sock_alloc_send_pskb(sk, 0, 0, flags & MSG_DONTWAIT,
           &err, 0);
  if (!newskb)
   goto err;
 }




 err = mutex_lock_interruptible(&unix_sk(other)->iolock);
 if (err) {
  err = flags & MSG_DONTWAIT ? -EAGAIN : -ERESTARTSYS;
  goto err;
 }

 if (sk->sk_shutdown & SEND_SHUTDOWN) {
  err = -EPIPE;
  send_sigpipe = 1;
  goto err_unlock;
 }

 unix_state_lock(other);

 if (sock_flag(other, SOCK_DEAD) ||
     other->sk_shutdown & RCV_SHUTDOWN) {
  err = -EPIPE;
  send_sigpipe = 1;
  goto err_state_unlock;
 }

 if (init_scm) {
  err = maybe_init_creds(&scm, socket, other);
  if (err)
   goto err_state_unlock;
  init_scm = 0;
 }

 skb = skb_peek_tail(&other->sk_receive_queue);
 if (tail && tail == skb) {
  skb = newskb;
 } else if (!skb || !unix_skb_scm_eq(skb, &scm)) {
  if (newskb) {
   skb = newskb;
  } else {
   tail = skb;
   goto alloc_skb;
  }
 } else if (newskb) {




  consume_skb(newskb);
  newskb = ((void*)0);
 }

 if (skb_append_pagefrags(skb, page, offset, size)) {
  tail = skb;
  goto alloc_skb;
 }

 skb->len += size;
 skb->data_len += size;
 skb->truesize += size;
 refcount_add(size, &sk->sk_wmem_alloc);

 if (newskb) {
  err = unix_scm_to_skb(&scm, skb, 0);
  if (err)
   goto err_state_unlock;
  spin_lock(&other->sk_receive_queue.lock);
  __skb_queue_tail(&other->sk_receive_queue, newskb);
  spin_unlock(&other->sk_receive_queue.lock);
 }

 unix_state_unlock(other);
 mutex_unlock(&unix_sk(other)->iolock);

 other->sk_data_ready(other);
 scm_destroy(&scm);
 return size;

err_state_unlock:
 unix_state_unlock(other);
err_unlock:
 mutex_unlock(&unix_sk(other)->iolock);
err:
 kfree_skb(newskb);
 if (send_sigpipe && !(flags & MSG_NOSIGNAL))
  send_sig(SIGPIPE, current, 0);
 if (!init_scm)
  scm_destroy(&scm);
 return err;
}
