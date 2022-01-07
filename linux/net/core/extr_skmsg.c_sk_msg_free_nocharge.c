
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {int start; } ;
struct sk_msg {TYPE_1__ sg; } ;


 int __sk_msg_free (struct sock*,struct sk_msg*,int ,int) ;

int sk_msg_free_nocharge(struct sock *sk, struct sk_msg *msg)
{
 return __sk_msg_free(sk, msg, msg->sg.start, 0);
}
