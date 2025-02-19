
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sock {int dummy; } ;
struct sk_psock {int dummy; } ;
struct TYPE_2__ {int start; int end; int size; } ;
struct sk_msg {TYPE_1__ sg; } ;
struct scatterlist {scalar_t__ length; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int __GFP_NOWARN ;
 int get_page (int ) ;
 int kfree (struct sk_msg*) ;
 struct sk_msg* kzalloc (int,int) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int sk_mem_charge (struct sock*,scalar_t__) ;
 struct scatterlist* sk_msg_elem (struct sk_msg*,int) ;
 int sk_msg_free (struct sock*,struct sk_msg*) ;
 int sk_msg_iter_var_next (int) ;
 int sk_msg_page (struct sk_msg*,int) ;
 int sk_msg_xfer (struct sk_msg*,struct sk_msg*,int,scalar_t__) ;
 int sk_psock_data_ready (struct sock*,struct sk_psock*) ;
 int sk_psock_queue_msg (struct sk_psock*,struct sk_msg*) ;
 int sk_wmem_schedule (struct sock*,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int bpf_tcp_ingress(struct sock *sk, struct sk_psock *psock,
      struct sk_msg *msg, u32 apply_bytes, int flags)
{
 bool apply = apply_bytes;
 struct scatterlist *sge;
 u32 size, copied = 0;
 struct sk_msg *tmp;
 int i, ret = 0;

 tmp = kzalloc(sizeof(*tmp), __GFP_NOWARN | GFP_KERNEL);
 if (unlikely(!tmp))
  return -ENOMEM;

 lock_sock(sk);
 tmp->sg.start = msg->sg.start;
 i = msg->sg.start;
 do {
  sge = sk_msg_elem(msg, i);
  size = (apply && apply_bytes < sge->length) ?
   apply_bytes : sge->length;
  if (!sk_wmem_schedule(sk, size)) {
   if (!copied)
    ret = -ENOMEM;
   break;
  }

  sk_mem_charge(sk, size);
  sk_msg_xfer(tmp, msg, i, size);
  copied += size;
  if (sge->length)
   get_page(sk_msg_page(tmp, i));
  sk_msg_iter_var_next(i);
  tmp->sg.end = i;
  if (apply) {
   apply_bytes -= size;
   if (!apply_bytes)
    break;
  }
 } while (i != msg->sg.end);

 if (!ret) {
  msg->sg.start = i;
  msg->sg.size -= apply_bytes;
  sk_psock_queue_msg(psock, tmp);
  sk_psock_data_ready(sk, psock);
 } else {
  sk_msg_free(sk, tmp);
  kfree(tmp);
 }

 release_sock(sk);
 return ret;
}
