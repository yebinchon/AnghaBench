
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {int start; int end; struct scatterlist* data; } ;
struct sk_msg {TYPE_1__ sg; } ;
struct scatterlist {int length; } ;


 int sk_mem_uncharge (struct sock*,int) ;
 int sk_msg_iter_var_next (int) ;

void sk_msg_return(struct sock *sk, struct sk_msg *msg, int bytes)
{
 int i = msg->sg.start;

 do {
  struct scatterlist *sge = &msg->sg.data[i];
  int uncharge = (bytes < sge->length) ? bytes : sge->length;

  sk_mem_uncharge(sk, uncharge);
  bytes -= uncharge;
  sk_msg_iter_var_next(i);
 } while (i != msg->sg.end);
}
