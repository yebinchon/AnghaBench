#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct nfc_llcp_local {int /*<<< orphan*/  remote_lto; int /*<<< orphan*/  link_timer; int /*<<< orphan*/  tx_work; scalar_t__ rf_mode; scalar_t__ comm_mode; int /*<<< orphan*/  target_idx; } ;
struct nfc_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ NFC_RF_INITIATOR ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct nfc_llcp_local* FUNC2 (struct nfc_dev*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct nfc_dev *dev, u32 target_idx,
			u8 comm_mode, u8 rf_mode)
{
	struct nfc_llcp_local *local;

	FUNC3("rf mode %d\n", rf_mode);

	local = FUNC2(dev);
	if (local == NULL)
		return;

	local->target_idx = target_idx;
	local->comm_mode = comm_mode;
	local->rf_mode = rf_mode;

	if (rf_mode == NFC_RF_INITIATOR) {
		FUNC3("Queueing Tx work\n");

		FUNC4(&local->tx_work);
	} else {
		FUNC0(&local->link_timer,
			  jiffies + FUNC1(local->remote_lto));
	}
}