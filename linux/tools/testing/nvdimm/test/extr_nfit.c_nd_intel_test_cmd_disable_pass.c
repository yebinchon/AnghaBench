
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfit_test_sec {int state; int passphrase; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;
struct nfit_test {TYPE_1__ pdev; } ;
struct nd_intel_disable_passphrase {int status; int passphrase; } ;


 int ND_INTEL_PASSPHRASE_SIZE ;
 int ND_INTEL_SEC_STATE_ENABLED ;
 int ND_INTEL_SEC_STATE_FROZEN ;
 int ND_INTEL_STATUS_INVALID_PASS ;
 int ND_INTEL_STATUS_INVALID_STATE ;
 int dev_dbg (struct device*,char*) ;
 struct nfit_test_sec* dimm_sec_info ;
 scalar_t__ memcmp (int ,int ,int ) ;
 int memset (int ,int ,int ) ;

__attribute__((used)) static int nd_intel_test_cmd_disable_pass(struct nfit_test *t,
  struct nd_intel_disable_passphrase *nd_cmd,
  unsigned int buf_len, int dimm)
{
 struct device *dev = &t->pdev.dev;
 struct nfit_test_sec *sec = &dimm_sec_info[dimm];

 if (!(sec->state & ND_INTEL_SEC_STATE_ENABLED) ||
   (sec->state & ND_INTEL_SEC_STATE_FROZEN)) {
  nd_cmd->status = ND_INTEL_STATUS_INVALID_STATE;
  dev_dbg(dev, "disable passphrase: wrong security state\n");
 } else if (memcmp(nd_cmd->passphrase, sec->passphrase,
    ND_INTEL_PASSPHRASE_SIZE) != 0) {
  nd_cmd->status = ND_INTEL_STATUS_INVALID_PASS;
  dev_dbg(dev, "disable passphrase: wrong passphrase\n");
 } else {
  memset(sec->passphrase, 0, ND_INTEL_PASSPHRASE_SIZE);
  sec->state = 0;
  dev_dbg(dev, "disable passphrase: done\n");
 }

 return 0;
}
