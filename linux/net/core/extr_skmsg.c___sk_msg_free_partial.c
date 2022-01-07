
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sock {int dummy; } ;
struct TYPE_2__ {scalar_t__ start; scalar_t__ size; } ;
struct sk_msg {TYPE_1__ sg; } ;
struct scatterlist {scalar_t__ length; scalar_t__ offset; } ;


 int sk_mem_uncharge (struct sock*,scalar_t__) ;
 int sk_msg_check_to_free (struct sk_msg*,scalar_t__,scalar_t__) ;
 struct scatterlist* sk_msg_elem (struct sk_msg*,scalar_t__) ;
 int sk_msg_free_elem (struct sock*,struct sk_msg*,scalar_t__,int) ;
 int sk_msg_iter_var_next (scalar_t__) ;

__attribute__((used)) static void __sk_msg_free_partial(struct sock *sk, struct sk_msg *msg,
      u32 bytes, bool charge)
{
 struct scatterlist *sge;
 u32 i = msg->sg.start;

 while (bytes) {
  sge = sk_msg_elem(msg, i);
  if (!sge->length)
   break;
  if (bytes < sge->length) {
   if (charge)
    sk_mem_uncharge(sk, bytes);
   sge->length -= bytes;
   sge->offset += bytes;
   msg->sg.size -= bytes;
   break;
  }

  msg->sg.size -= sge->length;
  bytes -= sge->length;
  sk_msg_free_elem(sk, msg, i, charge);
  sk_msg_iter_var_next(i);
  sk_msg_check_to_free(msg, i, bytes);
 }
 msg->sg.start = i;
}
