
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct sock {int dummy; } ;
struct TYPE_4__ {int size; size_t end; size_t curr; int copybreak; size_t start; TYPE_1__* data; } ;
struct sk_msg {TYPE_2__ sg; } ;
struct TYPE_3__ {int length; } ;


 int WARN_ON (int) ;
 int sk_mem_uncharge (struct sock*,int) ;
 int sk_msg_free_elem (struct sock*,struct sk_msg*,size_t,int) ;
 scalar_t__ sk_msg_iter_dist (size_t,size_t) ;
 int sk_msg_iter_var_next (size_t) ;
 int sk_msg_iter_var_prev (size_t) ;

void sk_msg_trim(struct sock *sk, struct sk_msg *msg, int len)
{
 int trim = msg->sg.size - len;
 u32 i = msg->sg.end;

 if (trim <= 0) {
  WARN_ON(trim < 0);
  return;
 }

 sk_msg_iter_var_prev(i);
 msg->sg.size = len;
 while (msg->sg.data[i].length &&
        trim >= msg->sg.data[i].length) {
  trim -= msg->sg.data[i].length;
  sk_msg_free_elem(sk, msg, i, 1);
  sk_msg_iter_var_prev(i);
  if (!trim)
   goto out;
 }

 msg->sg.data[i].length -= trim;
 sk_mem_uncharge(sk, trim);

 if (msg->sg.curr == i && msg->sg.copybreak > msg->sg.data[i].length)
  msg->sg.copybreak = msg->sg.data[i].length;
out:
 sk_msg_iter_var_next(i);
 msg->sg.end = i;







 if (!msg->sg.size) {
  msg->sg.curr = msg->sg.start;
  msg->sg.copybreak = 0;
 } else if (sk_msg_iter_dist(msg->sg.start, msg->sg.curr) >=
     sk_msg_iter_dist(msg->sg.start, msg->sg.end)) {
  sk_msg_iter_var_prev(i);
  msg->sg.curr = i;
  msg->sg.copybreak = msg->sg.data[i].length;
 }
}
