
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {int start; int end; } ;
struct sk_msg {TYPE_1__ sg; } ;
struct scatterlist {int length; scalar_t__ offset; } ;


 int sk_mem_uncharge (struct sock*,int) ;
 struct scatterlist* sk_msg_elem (struct sk_msg*,int) ;
 int sk_msg_iter_var_next (int) ;

void sk_msg_return_zero(struct sock *sk, struct sk_msg *msg, int bytes)
{
 int i = msg->sg.start;

 do {
  struct scatterlist *sge = sk_msg_elem(msg, i);

  if (bytes < sge->length) {
   sge->length -= bytes;
   sge->offset += bytes;
   sk_mem_uncharge(sk, bytes);
   break;
  }

  sk_mem_uncharge(sk, sge->length);
  bytes -= sge->length;
  sge->length = 0;
  sge->offset = 0;
  sk_msg_iter_var_next(i);
 } while (bytes && i != msg->sg.end);
 msg->sg.start = i;
}
