#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nfit_test_sec {int state; int /*<<< orphan*/  ext_state; int /*<<< orphan*/  master_passphrase; int /*<<< orphan*/  passphrase; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;
struct nfit_test {TYPE_1__ pdev; } ;
struct nd_intel_secure_erase {int /*<<< orphan*/  passphrase; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  ND_INTEL_PASSPHRASE_SIZE ; 
 int /*<<< orphan*/  ND_INTEL_SEC_ESTATE_ENABLED ; 
 int ND_INTEL_SEC_STATE_ENABLED ; 
 int ND_INTEL_SEC_STATE_FROZEN ; 
 int /*<<< orphan*/  ND_INTEL_STATUS_INVALID_PASS ; 
 int /*<<< orphan*/  ND_INTEL_STATUS_INVALID_STATE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct nfit_test_sec* dimm_sec_info ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zero_key ; 

__attribute__((used)) static int FUNC3(struct nfit_test *t,
		struct nd_intel_secure_erase *nd_cmd,
		unsigned int buf_len, int dimm)
{
	struct device *dev = &t->pdev.dev;
	struct nfit_test_sec *sec = &dimm_sec_info[dimm];

	if (sec->state & ND_INTEL_SEC_STATE_FROZEN) {
		nd_cmd->status = ND_INTEL_STATUS_INVALID_STATE;
		FUNC0(dev, "secure erase: wrong security state\n");
	} else if (FUNC1(nd_cmd->passphrase, sec->passphrase,
				ND_INTEL_PASSPHRASE_SIZE) != 0) {
		nd_cmd->status = ND_INTEL_STATUS_INVALID_PASS;
		FUNC0(dev, "secure erase: wrong passphrase\n");
	} else {
		if (!(sec->state & ND_INTEL_SEC_STATE_ENABLED)
				&& (FUNC1(nd_cmd->passphrase, zero_key,
					ND_INTEL_PASSPHRASE_SIZE) != 0)) {
			FUNC0(dev, "invalid zero key\n");
			return 0;
		}
		FUNC2(sec->passphrase, 0, ND_INTEL_PASSPHRASE_SIZE);
		FUNC2(sec->master_passphrase, 0, ND_INTEL_PASSPHRASE_SIZE);
		sec->state = 0;
		sec->ext_state = ND_INTEL_SEC_ESTATE_ENABLED;
		FUNC0(dev, "secure erase: done\n");
	}

	return 0;
}