
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfit_test_sec {int state; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;
struct nfit_test {TYPE_1__ pdev; } ;
struct nd_intel_freeze_lock {scalar_t__ status; } ;


 int ND_INTEL_SEC_STATE_ENABLED ;
 int ND_INTEL_SEC_STATE_FROZEN ;
 scalar_t__ ND_INTEL_STATUS_INVALID_STATE ;
 int dev_dbg (struct device*,char*) ;
 struct nfit_test_sec* dimm_sec_info ;

__attribute__((used)) static int nd_intel_test_cmd_freeze_lock(struct nfit_test *t,
  struct nd_intel_freeze_lock *nd_cmd,
  unsigned int buf_len, int dimm)
{
 struct device *dev = &t->pdev.dev;
 struct nfit_test_sec *sec = &dimm_sec_info[dimm];

 if (!(sec->state & ND_INTEL_SEC_STATE_ENABLED)) {
  nd_cmd->status = ND_INTEL_STATUS_INVALID_STATE;
  dev_dbg(dev, "freeze lock: wrong security state\n");
 } else {
  sec->state |= ND_INTEL_SEC_STATE_FROZEN;
  nd_cmd->status = 0;
  dev_dbg(dev, "security frozen\n");
 }

 return 0;
}
