
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int end; int * data; } ;
struct sk_msg {TYPE_1__ sg; } ;


 int end ;
 int sk_msg_iter_prev (struct sk_msg*,int ) ;
 int sk_msg_iter_var_next (int) ;

__attribute__((used)) static void sk_msg_shift_left(struct sk_msg *msg, int i)
{
 int prev;

 do {
  prev = i;
  sk_msg_iter_var_next(i);
  msg->sg.data[prev] = msg->sg.data[i];
 } while (i != msg->sg.end);

 sk_msg_iter_prev(msg, end);
}
