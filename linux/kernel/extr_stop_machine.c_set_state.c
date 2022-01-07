
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct multi_stop_data {int state; int num_threads; int thread_ack; } ;
typedef enum multi_stop_state { ____Placeholder_multi_stop_state } multi_stop_state ;


 int WRITE_ONCE (int ,int) ;
 int atomic_set (int *,int ) ;
 int smp_wmb () ;

__attribute__((used)) static void set_state(struct multi_stop_data *msdata,
        enum multi_stop_state newstate)
{

 atomic_set(&msdata->thread_ack, msdata->num_threads);
 smp_wmb();
 WRITE_ONCE(msdata->state, newstate);
}
