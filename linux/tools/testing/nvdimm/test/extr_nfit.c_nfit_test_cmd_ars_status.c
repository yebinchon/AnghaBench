
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nd_cmd_ars_status {int out_length; int status; } ;
struct ars_state {int lock; TYPE_1__* ars_status; int deadline; } ;
struct TYPE_2__ {unsigned int out_length; } ;


 int EBUSY ;
 int EINVAL ;
 int NFIT_ARS_STATUS_BUSY ;
 int jiffies ;
 int memcpy (struct nd_cmd_ars_status*,TYPE_1__*,unsigned int) ;
 int memset (struct nd_cmd_ars_status*,int ,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ time_before (int ,int ) ;

__attribute__((used)) static int nfit_test_cmd_ars_status(struct ars_state *ars_state,
  struct nd_cmd_ars_status *ars_status, unsigned int buf_len,
  int *cmd_rc)
{
 if (buf_len < ars_state->ars_status->out_length)
  return -EINVAL;

 spin_lock(&ars_state->lock);
 if (time_before(jiffies, ars_state->deadline)) {
  memset(ars_status, 0, buf_len);
  ars_status->status = NFIT_ARS_STATUS_BUSY;
  ars_status->out_length = sizeof(*ars_status);
  *cmd_rc = -EBUSY;
 } else {
  memcpy(ars_status, ars_state->ars_status,
    ars_state->ars_status->out_length);
  *cmd_rc = 0;
 }
 spin_unlock(&ars_state->lock);
 return 0;
}
