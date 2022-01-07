
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct selinux_state {TYPE_1__* ss; } ;
struct selinux_kernel_status {int enforcing; int sequence; } ;
struct TYPE_2__ {int status_lock; scalar_t__ status_page; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct selinux_kernel_status* page_address (scalar_t__) ;
 int smp_wmb () ;

void selinux_status_update_setenforce(struct selinux_state *state,
          int enforcing)
{
 struct selinux_kernel_status *status;

 mutex_lock(&state->ss->status_lock);
 if (state->ss->status_page) {
  status = page_address(state->ss->status_page);

  status->sequence++;
  smp_wmb();

  status->enforcing = enforcing;

  smp_wmb();
  status->sequence++;
 }
 mutex_unlock(&state->ss->status_lock);
}
