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
typedef  int /*<<< orphan*/  xmit_to_drv_t ;
struct nfc_llc_engine {TYPE_1__* ops; } ;
struct nfc_llc {TYPE_1__* ops; int /*<<< orphan*/ * data; int /*<<< orphan*/  rx_tailroom; int /*<<< orphan*/  rx_headroom; } ;
struct nfc_hci_dev {int dummy; } ;
typedef  int /*<<< orphan*/  rcv_to_hci_t ;
typedef  int /*<<< orphan*/  llc_failure_t ;
struct TYPE_2__ {int /*<<< orphan*/ * (* init ) (struct nfc_hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct nfc_llc*) ; 
 struct nfc_llc* FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct nfc_llc_engine* FUNC2 (char const*) ; 
 int /*<<< orphan*/ * FUNC3 (struct nfc_hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

struct nfc_llc *FUNC4(const char *name, struct nfc_hci_dev *hdev,
				 xmit_to_drv_t xmit_to_drv,
				 rcv_to_hci_t rcv_to_hci, int tx_headroom,
				 int tx_tailroom, llc_failure_t llc_failure)
{
	struct nfc_llc_engine *llc_engine;
	struct nfc_llc *llc;

	llc_engine = FUNC2(name);
	if (llc_engine == NULL)
		return NULL;

	llc = FUNC1(sizeof(struct nfc_llc), GFP_KERNEL);
	if (llc == NULL)
		return NULL;

	llc->data = llc_engine->ops->init(hdev, xmit_to_drv, rcv_to_hci,
					  tx_headroom, tx_tailroom,
					  &llc->rx_headroom, &llc->rx_tailroom,
					  llc_failure);
	if (llc->data == NULL) {
		FUNC0(llc);
		return NULL;
	}
	llc->ops = llc_engine->ops;

	return llc;
}