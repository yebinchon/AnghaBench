
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct rxrpc_call {int user_mutex; int expect_term_by; } ;


 int WRITE_ONCE (int ,unsigned long) ;
 unsigned long jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rxrpc_reduce_call_timer (struct rxrpc_call*,unsigned long,unsigned long,int ) ;
 int rxrpc_timer_set_for_hard ;

void rxrpc_kernel_set_max_life(struct socket *sock, struct rxrpc_call *call,
          unsigned long hard_timeout)
{
 unsigned long now;

 mutex_lock(&call->user_mutex);

 now = jiffies;
 hard_timeout += now;
 WRITE_ONCE(call->expect_term_by, hard_timeout);
 rxrpc_reduce_call_timer(call, hard_timeout, now, rxrpc_timer_set_for_hard);

 mutex_unlock(&call->user_mutex);
}
