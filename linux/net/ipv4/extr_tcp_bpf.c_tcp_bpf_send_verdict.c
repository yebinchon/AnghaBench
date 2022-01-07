
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sock {int dummy; } ;
struct sk_psock {int eval; scalar_t__ cork_bytes; scalar_t__ apply_bytes; struct sock* sk_redir; int * cork; } ;
struct TYPE_4__ {size_t start; size_t end; scalar_t__ size; TYPE_1__* data; } ;
struct sk_msg {scalar_t__ cork_bytes; TYPE_2__ sg; } ;
struct TYPE_3__ {scalar_t__ length; scalar_t__ page_link; } ;


 int EACCES ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int __GFP_NOWARN ;

 int __SK_NONE ;


 int kfree (struct sk_msg*) ;
 int * kzalloc (int,int) ;
 scalar_t__ likely (int) ;
 int lock_sock (struct sock*) ;
 int memcpy (int *,struct sk_msg*,int) ;
 int release_sock (struct sock*) ;
 int sk_msg_apply_bytes (struct sk_psock*,scalar_t__) ;
 int sk_msg_free (struct sock*,struct sk_msg*) ;
 int sk_msg_free_nocharge (struct sock*,struct sk_msg*) ;
 int sk_msg_free_partial (struct sock*,struct sk_msg*,scalar_t__) ;
 int sk_msg_return (struct sock*,struct sk_msg*,scalar_t__) ;
 int sk_psock_msg_verdict (struct sock*,struct sk_psock*,struct sk_msg*) ;
 int sock_put (struct sock*) ;
 int tcp_bpf_push (struct sock*,struct sk_msg*,scalar_t__,int,int) ;
 int tcp_bpf_sendmsg_redir (struct sock*,struct sk_msg*,scalar_t__,int) ;
 int unlikely (int) ;

__attribute__((used)) static int tcp_bpf_send_verdict(struct sock *sk, struct sk_psock *psock,
    struct sk_msg *msg, int *copied, int flags)
{
 bool cork = 0, enospc = msg->sg.start == msg->sg.end;
 struct sock *sk_redir;
 u32 tosend, delta = 0;
 int ret;

more_data:
 if (psock->eval == __SK_NONE) {





  delta = msg->sg.size;
  psock->eval = sk_psock_msg_verdict(sk, psock, msg);
  if (msg->sg.size < delta)
   delta -= msg->sg.size;
  else
   delta = 0;
 }

 if (msg->cork_bytes &&
     msg->cork_bytes > msg->sg.size && !enospc) {
  psock->cork_bytes = msg->cork_bytes - msg->sg.size;
  if (!psock->cork) {
   psock->cork = kzalloc(sizeof(*psock->cork),
           GFP_ATOMIC | __GFP_NOWARN);
   if (!psock->cork)
    return -ENOMEM;
  }
  memcpy(psock->cork, msg, sizeof(*msg));
  return 0;
 }

 tosend = msg->sg.size;
 if (psock->apply_bytes && psock->apply_bytes < tosend)
  tosend = psock->apply_bytes;

 switch (psock->eval) {
 case 129:
  ret = tcp_bpf_push(sk, msg, tosend, flags, 1);
  if (unlikely(ret)) {
   *copied -= sk_msg_free(sk, msg);
   break;
  }
  sk_msg_apply_bytes(psock, tosend);
  break;
 case 128:
  sk_redir = psock->sk_redir;
  sk_msg_apply_bytes(psock, tosend);
  if (psock->cork) {
   cork = 1;
   psock->cork = ((void*)0);
  }
  sk_msg_return(sk, msg, tosend);
  release_sock(sk);
  ret = tcp_bpf_sendmsg_redir(sk_redir, msg, tosend, flags);
  lock_sock(sk);
  if (unlikely(ret < 0)) {
   int free = sk_msg_free_nocharge(sk, msg);

   if (!cork)
    *copied -= free;
  }
  if (cork) {
   sk_msg_free(sk, msg);
   kfree(msg);
   msg = ((void*)0);
   ret = 0;
  }
  break;
 case 130:
 default:
  sk_msg_free_partial(sk, msg, tosend);
  sk_msg_apply_bytes(psock, tosend);
  *copied -= (tosend + delta);
  return -EACCES;
 }

 if (likely(!ret)) {
  if (!psock->apply_bytes) {
   psock->eval = __SK_NONE;
   if (psock->sk_redir) {
    sock_put(psock->sk_redir);
    psock->sk_redir = ((void*)0);
   }
  }
  if (msg &&
      msg->sg.data[msg->sg.start].page_link &&
      msg->sg.data[msg->sg.start].length)
   goto more_data;
 }
 return ret;
}
