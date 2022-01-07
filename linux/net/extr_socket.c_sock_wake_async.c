
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_wq {int fasync_list; int flags; } ;


 int SIGIO ;
 int SIGURG ;
 int SOCKWQ_ASYNC_NOSPACE ;
 int SOCKWQ_ASYNC_WAITDATA ;




 int kill_fasync (int *,int ,int) ;
 int test_and_clear_bit (int ,int *) ;
 int test_bit (int ,int *) ;

int sock_wake_async(struct socket_wq *wq, int how, int band)
{
 if (!wq || !wq->fasync_list)
  return -1;

 switch (how) {
 case 128:
  if (test_bit(SOCKWQ_ASYNC_WAITDATA, &wq->flags))
   break;
  goto call_kill;
 case 130:
  if (!test_and_clear_bit(SOCKWQ_ASYNC_NOSPACE, &wq->flags))
   break;

 case 131:
call_kill:
  kill_fasync(&wq->fasync_list, SIGIO, band);
  break;
 case 129:
  kill_fasync(&wq->fasync_list, SIGURG, band);
 }

 return 0;
}
