
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int * data; } ;
struct rose_sock {int condition; TYPE_1__* neighbour; int state; int vl; int vs; int vr; int va; } ;
struct TYPE_2__ {int use; } ;


 int ROSE_CLEAR_CONFIRMATION ;



 int ROSE_STATE_3 ;
 int rose_disconnect (struct sock*,int ,int ,int ) ;
 int rose_requeue_frames (struct sock*) ;
 struct rose_sock* rose_sk (struct sock*) ;
 int rose_start_idletimer (struct sock*) ;
 int rose_stop_timer (struct sock*) ;
 int rose_write_internal (struct sock*,int) ;

__attribute__((used)) static int rose_state4_machine(struct sock *sk, struct sk_buff *skb, int frametype)
{
 struct rose_sock *rose = rose_sk(sk);

 switch (frametype) {
 case 128:
  rose_write_internal(sk, 129);

 case 129:
  rose_stop_timer(sk);
  rose_start_idletimer(sk);
  rose->condition = 0x00;
  rose->va = 0;
  rose->vr = 0;
  rose->vs = 0;
  rose->vl = 0;
  rose->state = ROSE_STATE_3;
  rose_requeue_frames(sk);
  break;

 case 130:
  rose_write_internal(sk, ROSE_CLEAR_CONFIRMATION);
  rose_disconnect(sk, 0, skb->data[3], skb->data[4]);
  rose->neighbour->use--;
  break;

 default:
  break;
 }

 return 0;
}
