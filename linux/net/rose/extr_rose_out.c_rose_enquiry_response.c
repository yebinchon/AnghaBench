
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct rose_sock {int condition; int vr; int vl; } ;


 int ROSE_COND_ACK_PENDING ;
 int ROSE_COND_OWN_RX_BUSY ;
 int ROSE_RNR ;
 int ROSE_RR ;
 struct rose_sock* rose_sk (struct sock*) ;
 int rose_stop_timer (struct sock*) ;
 int rose_write_internal (struct sock*,int ) ;

void rose_enquiry_response(struct sock *sk)
{
 struct rose_sock *rose = rose_sk(sk);

 if (rose->condition & ROSE_COND_OWN_RX_BUSY)
  rose_write_internal(sk, ROSE_RNR);
 else
  rose_write_internal(sk, ROSE_RR);

 rose->vl = rose->vr;
 rose->condition &= ~ROSE_COND_ACK_PENDING;

 rose_stop_timer(sk);
}
