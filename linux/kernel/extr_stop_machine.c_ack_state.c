
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct multi_stop_data {scalar_t__ state; int thread_ack; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int set_state (struct multi_stop_data*,scalar_t__) ;

__attribute__((used)) static void ack_state(struct multi_stop_data *msdata)
{
 if (atomic_dec_and_test(&msdata->thread_ack))
  set_state(msdata, msdata->state + 1);
}
