
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfit_test_sec {int state; int old_state; scalar_t__ overwrite_end_time; int passphrase; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;
struct nfit_test {TYPE_1__ pdev; } ;
struct nd_intel_overwrite {int status; int passphrase; } ;


 int HZ ;
 int ND_INTEL_PASSPHRASE_SIZE ;
 int ND_INTEL_SEC_STATE_ENABLED ;
 int ND_INTEL_SEC_STATE_OVERWRITE ;
 int ND_INTEL_STATUS_INVALID_PASS ;
 int dev_dbg (struct device*,char*) ;
 struct nfit_test_sec* dimm_sec_info ;
 scalar_t__ get_jiffies_64 () ;
 scalar_t__ memcmp (int ,int ,int ) ;

__attribute__((used)) static int nd_intel_test_cmd_overwrite(struct nfit_test *t,
  struct nd_intel_overwrite *nd_cmd,
  unsigned int buf_len, int dimm)
{
 struct device *dev = &t->pdev.dev;
 struct nfit_test_sec *sec = &dimm_sec_info[dimm];

 if ((sec->state & ND_INTEL_SEC_STATE_ENABLED) &&
   memcmp(nd_cmd->passphrase, sec->passphrase,
    ND_INTEL_PASSPHRASE_SIZE) != 0) {
  nd_cmd->status = ND_INTEL_STATUS_INVALID_PASS;
  dev_dbg(dev, "overwrite: wrong passphrase\n");
  return 0;
 }

 sec->old_state = sec->state;
 sec->state = ND_INTEL_SEC_STATE_OVERWRITE;
 dev_dbg(dev, "overwrite progressing.\n");
 sec->overwrite_end_time = get_jiffies_64() + 5 * HZ;

 return 0;
}
