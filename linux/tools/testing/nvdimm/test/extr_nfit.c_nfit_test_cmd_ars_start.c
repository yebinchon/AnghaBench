
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfit_test {int badrange; } ;
struct nd_cmd_ars_start {int scrub_time; int length; int address; scalar_t__ status; } ;
struct ars_state {int lock; int deadline; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ NFIT_ARS_START_BUSY ;
 int jiffies ;
 int post_ars_status (struct ars_state*,int *,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ time_before (int ,int ) ;

__attribute__((used)) static int nfit_test_cmd_ars_start(struct nfit_test *t,
  struct ars_state *ars_state,
  struct nd_cmd_ars_start *ars_start, unsigned int buf_len,
  int *cmd_rc)
{
 if (buf_len < sizeof(*ars_start))
  return -EINVAL;

 spin_lock(&ars_state->lock);
 if (time_before(jiffies, ars_state->deadline)) {
  ars_start->status = NFIT_ARS_START_BUSY;
  *cmd_rc = -EBUSY;
 } else {
  ars_start->status = 0;
  ars_start->scrub_time = 1;
  post_ars_status(ars_state, &t->badrange, ars_start->address,
    ars_start->length);
  *cmd_rc = 0;
 }
 spin_unlock(&ars_state->lock);

 return 0;
}
