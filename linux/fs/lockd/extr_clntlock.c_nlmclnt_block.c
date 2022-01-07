
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nlm_wait {scalar_t__ b_status; int b_wait; } ;
struct TYPE_2__ {scalar_t__ status; } ;
struct nlm_rqst {TYPE_1__ a_res; } ;


 int EAGAIN ;
 int ERESTARTSYS ;
 scalar_t__ nlm_lck_blocked ;
 scalar_t__ nlm_lck_denied_grace_period ;
 long wait_event_interruptible_timeout (int ,int,long) ;

int nlmclnt_block(struct nlm_wait *block, struct nlm_rqst *req, long timeout)
{
 long ret;




 if (block == ((void*)0))
  return -EAGAIN;
 ret = wait_event_interruptible_timeout(block->b_wait,
   block->b_status != nlm_lck_blocked,
   timeout);
 if (ret < 0)
  return -ERESTARTSYS;

 if (block->b_status == nlm_lck_denied_grace_period)
  block->b_status = nlm_lck_blocked;
 req->a_res.status = block->b_status;
 return 0;
}
