
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct sock {int dummy; } ;
struct nr_sock {int condition; struct sock sock; } ;


 int NR_COND_ACK_PENDING ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 struct nr_sock* from_timer (int ,struct timer_list*,int ) ;
 struct nr_sock* nr ;
 int nr_enquiry_response (struct sock*) ;
 int t2timer ;

__attribute__((used)) static void nr_t2timer_expiry(struct timer_list *t)
{
 struct nr_sock *nr = from_timer(nr, t, t2timer);
 struct sock *sk = &nr->sock;

 bh_lock_sock(sk);
 if (nr->condition & NR_COND_ACK_PENDING) {
  nr->condition &= ~NR_COND_ACK_PENDING;
  nr_enquiry_response(sk);
 }
 bh_unlock_sock(sk);
}
