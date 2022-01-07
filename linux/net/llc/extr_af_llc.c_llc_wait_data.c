
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_shutdown; } ;


 int EAGAIN ;
 int RCV_SHUTDOWN ;
 int current ;
 scalar_t__ signal_pending (int ) ;
 scalar_t__ sk_wait_data (struct sock*,long*,int *) ;
 int sock_error (struct sock*) ;
 int sock_intr_errno (long) ;

__attribute__((used)) static int llc_wait_data(struct sock *sk, long timeo)
{
 int rc;

 while (1) {



  rc = sock_error(sk);
  if (rc)
   break;
  rc = 0;
  if (sk->sk_shutdown & RCV_SHUTDOWN)
   break;
  rc = -EAGAIN;
  if (!timeo)
   break;
  rc = sock_intr_errno(timeo);
  if (signal_pending(current))
   break;
  rc = 0;
  if (sk_wait_data(sk, &timeo, ((void*)0)))
   break;
 }
 return rc;
}
