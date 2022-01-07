
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfit_test_sec {int ext_state; int master_passphrase; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;
struct nfit_test {TYPE_1__ pdev; } ;
struct nd_intel_set_master_passphrase {int new_pass; int status; int old_pass; } ;


 int ND_INTEL_PASSPHRASE_SIZE ;
 int ND_INTEL_SEC_ESTATE_ENABLED ;
 int ND_INTEL_SEC_ESTATE_PLIMIT ;
 int ND_INTEL_STATUS_INVALID_PASS ;
 int ND_INTEL_STATUS_INVALID_STATE ;
 int ND_INTEL_STATUS_NOT_SUPPORTED ;
 int dev_dbg (struct device*,char*) ;
 struct nfit_test_sec* dimm_sec_info ;
 scalar_t__ memcmp (int ,int ,int ) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int nd_intel_test_cmd_master_set_pass(struct nfit_test *t,
  struct nd_intel_set_master_passphrase *nd_cmd,
  unsigned int buf_len, int dimm)
{
 struct device *dev = &t->pdev.dev;
 struct nfit_test_sec *sec = &dimm_sec_info[dimm];

 if (!(sec->ext_state & ND_INTEL_SEC_ESTATE_ENABLED)) {
  nd_cmd->status = ND_INTEL_STATUS_NOT_SUPPORTED;
  dev_dbg(dev, "master set passphrase: in wrong state\n");
 } else if (sec->ext_state & ND_INTEL_SEC_ESTATE_PLIMIT) {
  nd_cmd->status = ND_INTEL_STATUS_INVALID_STATE;
  dev_dbg(dev, "master set passphrase: in wrong security state\n");
 } else if (memcmp(nd_cmd->old_pass, sec->master_passphrase,
    ND_INTEL_PASSPHRASE_SIZE) != 0) {
  nd_cmd->status = ND_INTEL_STATUS_INVALID_PASS;
  dev_dbg(dev, "master set passphrase: wrong passphrase\n");
 } else {
  memcpy(sec->master_passphrase, nd_cmd->new_pass,
    ND_INTEL_PASSPHRASE_SIZE);
  sec->ext_state = ND_INTEL_SEC_ESTATE_ENABLED;
  dev_dbg(dev, "master passphrase: updated\n");
 }

 return 0;
}
