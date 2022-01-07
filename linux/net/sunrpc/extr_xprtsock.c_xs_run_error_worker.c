
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_xprt {int error_worker; int sock_state; } ;


 int queue_work (int ,int *) ;
 int set_bit (unsigned int,int *) ;
 int xprtiod_workqueue ;

__attribute__((used)) static void xs_run_error_worker(struct sock_xprt *transport, unsigned int nr)
{
 set_bit(nr, &transport->sock_state);
 queue_work(xprtiod_workqueue, &transport->error_worker);
}
