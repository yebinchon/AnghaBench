
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct sock {int dummy; } ;
struct rose_sock {int state; int condition; TYPE_1__* neighbour; struct sock sock; } ;
struct TYPE_2__ {int use; } ;


 int ETIMEDOUT ;
 int ROSE_CLEAR_REQUEST ;
 int ROSE_COND_ACK_PENDING ;




 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 struct rose_sock* from_timer (int ,struct timer_list*,int ) ;
 struct rose_sock* rose ;
 int rose_disconnect (struct sock*,int ,int,int) ;
 int rose_enquiry_response (struct sock*) ;
 int rose_start_t3timer (struct sock*) ;
 int rose_write_internal (struct sock*,int ) ;
 int timer ;

__attribute__((used)) static void rose_timer_expiry(struct timer_list *t)
{
 struct rose_sock *rose = from_timer(rose, t, timer);
 struct sock *sk = &rose->sock;

 bh_lock_sock(sk);
 switch (rose->state) {
 case 131:
 case 128:
  rose_write_internal(sk, ROSE_CLEAR_REQUEST);
  rose->state = 130;
  rose_start_t3timer(sk);
  break;

 case 130:
  rose->neighbour->use--;
  rose_disconnect(sk, ETIMEDOUT, -1, -1);
  break;

 case 129:
  if (rose->condition & ROSE_COND_ACK_PENDING) {
   rose->condition &= ~ROSE_COND_ACK_PENDING;
   rose_enquiry_response(sk);
  }
  break;
 }
 bh_unlock_sock(sk);
}
