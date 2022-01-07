
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct selinux_state {TYPE_1__* ss; } ;
struct selinux_kernel_status {int deny_unknown; scalar_t__ policyload; int enforcing; scalar_t__ sequence; int version; } ;
struct page {int dummy; } ;
struct TYPE_2__ {int status_lock; struct page* status_page; } ;


 int GFP_KERNEL ;
 int SELINUX_KERNEL_STATUS_VERSION ;
 int __GFP_ZERO ;
 struct page* alloc_page (int) ;
 int enforcing_enabled (struct selinux_state*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct selinux_kernel_status* page_address (struct page*) ;
 int security_get_allow_unknown (struct selinux_state*) ;

struct page *selinux_kernel_status_page(struct selinux_state *state)
{
 struct selinux_kernel_status *status;
 struct page *result = ((void*)0);

 mutex_lock(&state->ss->status_lock);
 if (!state->ss->status_page) {
  state->ss->status_page = alloc_page(GFP_KERNEL|__GFP_ZERO);

  if (state->ss->status_page) {
   status = page_address(state->ss->status_page);

   status->version = SELINUX_KERNEL_STATUS_VERSION;
   status->sequence = 0;
   status->enforcing = enforcing_enabled(state);






   status->policyload = 0;
   status->deny_unknown =
    !security_get_allow_unknown(state);
  }
 }
 result = state->ss->status_page;
 mutex_unlock(&state->ss->status_lock);

 return result;
}
