
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sock {int dummy; } ;
struct htcp {int undo_last_cong; int last_cong; } ;






 int htcp_reset (struct htcp*) ;
 struct htcp* inet_csk_ca (struct sock*) ;
 int jiffies ;

__attribute__((used)) static void htcp_state(struct sock *sk, u8 new_state)
{
 switch (new_state) {
 case 129:
  {
   struct htcp *ca = inet_csk_ca(sk);

   if (ca->undo_last_cong) {
    ca->last_cong = jiffies;
    ca->undo_last_cong = 0;
   }
  }
  break;
 case 131:
 case 128:
 case 130:
  htcp_reset(inet_csk_ca(sk));
  break;
 }
}
