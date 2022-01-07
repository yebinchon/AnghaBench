
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int end; struct scatterlist* data; } ;
struct sk_msg {TYPE_1__ sg; } ;
struct scatterlist {int dummy; } ;


 int end ;
 struct scatterlist sk_msg_elem_cpy (struct sk_msg*,int) ;
 int sk_msg_iter_next (struct sk_msg*,int ) ;
 int sk_msg_iter_var_next (int) ;

__attribute__((used)) static void sk_msg_shift_right(struct sk_msg *msg, int i)
{
 struct scatterlist tmp, sge;

 sk_msg_iter_next(msg, end);
 sge = sk_msg_elem_cpy(msg, i);
 sk_msg_iter_var_next(i);
 tmp = sk_msg_elem_cpy(msg, i);

 while (i != msg->sg.end) {
  msg->sg.data[i] = sge;
  sk_msg_iter_var_next(i);
  sge = tmp;
  tmp = sk_msg_elem_cpy(msg, i);
 }
}
