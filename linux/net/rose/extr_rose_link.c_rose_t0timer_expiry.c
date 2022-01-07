
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct rose_neigh {scalar_t__ dce_mode; } ;


 struct rose_neigh* from_timer (int ,struct timer_list*,int ) ;
 struct rose_neigh* neigh ;
 int rose_start_t0timer (struct rose_neigh*) ;
 int rose_transmit_restart_request (struct rose_neigh*) ;
 int t0timer ;

__attribute__((used)) static void rose_t0timer_expiry(struct timer_list *t)
{
 struct rose_neigh *neigh = from_timer(neigh, t, t0timer);

 rose_transmit_restart_request(neigh);

 neigh->dce_mode = 0;

 rose_start_t0timer(neigh);
}
