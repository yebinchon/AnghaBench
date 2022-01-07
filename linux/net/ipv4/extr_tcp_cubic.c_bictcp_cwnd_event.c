
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sock {int dummy; } ;
struct bictcp {scalar_t__ epoch_start; } ;
typedef scalar_t__ s32 ;
typedef enum tcp_ca_event { ____Placeholder_tcp_ca_event } tcp_ca_event ;
struct TYPE_2__ {scalar_t__ lsndtime; } ;


 int CA_EVENT_TX_START ;
 scalar_t__ after (scalar_t__,scalar_t__) ;
 struct bictcp* inet_csk_ca (struct sock*) ;
 scalar_t__ tcp_jiffies32 ;
 TYPE_1__* tcp_sk (struct sock*) ;

__attribute__((used)) static void bictcp_cwnd_event(struct sock *sk, enum tcp_ca_event event)
{
 if (event == CA_EVENT_TX_START) {
  struct bictcp *ca = inet_csk_ca(sk);
  u32 now = tcp_jiffies32;
  s32 delta;

  delta = now - tcp_sk(sk)->lsndtime;




  if (ca->epoch_start && delta > 0) {
   ca->epoch_start += delta;
   if (after(ca->epoch_start, now))
    ca->epoch_start = now;
  }
  return;
 }
}
