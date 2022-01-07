
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tasklet_struct {int state; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {struct tasklet_struct dccps_xmitlet; } ;


 int TASKLET_STATE_SCHED ;
 int __tasklet_schedule (struct tasklet_struct*) ;
 TYPE_1__* dccp_sk (struct sock*) ;
 int sock_hold (struct sock*) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void dccp_tasklet_schedule(struct sock *sk)
{
 struct tasklet_struct *t = &dccp_sk(sk)->dccps_xmitlet;

 if (!test_and_set_bit(TASKLET_STATE_SCHED, &t->state)) {
  sock_hold(sk);
  __tasklet_schedule(t);
 }
}
