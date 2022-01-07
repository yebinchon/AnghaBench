
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_state; } ;


 int EINVAL ;






__attribute__((used)) static int tipc_set_sk_state(struct sock *sk, int state)
{
 int oldsk_state = sk->sk_state;
 int res = -EINVAL;

 switch (state) {
 case 128:
  res = 0;
  break;
 case 129:
 case 132:
  if (oldsk_state == 128)
   res = 0;
  break;
 case 130:
  if (oldsk_state == 132 ||
      oldsk_state == 128)
   res = 0;
  break;
 case 131:
  if (oldsk_state == 132 ||
      oldsk_state == 130)
   res = 0;
  break;
 }

 if (!res)
  sk->sk_state = state;

 return res;
}
