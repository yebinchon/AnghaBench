#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct nfc_llcp_local {int lto; int local_wks; int /*<<< orphan*/  list; int /*<<< orphan*/  sdreq_timeout_work; int /*<<< orphan*/  sdreq_timer; int /*<<< orphan*/  pending_sdreqs; int /*<<< orphan*/  sdreq_lock; int /*<<< orphan*/  remote_lto; int /*<<< orphan*/  remote_miu; int /*<<< orphan*/  miux; int /*<<< orphan*/  rw; TYPE_3__ raw_sockets; TYPE_2__ connecting_sockets; TYPE_1__ sockets; int /*<<< orphan*/  timeout_work; int /*<<< orphan*/  rx_work; int /*<<< orphan*/ * rx_pending; int /*<<< orphan*/  tx_work; int /*<<< orphan*/  tx_queue; int /*<<< orphan*/  link_timer; int /*<<< orphan*/  sdp_lock; int /*<<< orphan*/  ref; struct nfc_dev* dev; } ;
struct nfc_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LLCP_DEFAULT_LTO ; 
 int /*<<< orphan*/  LLCP_DEFAULT_MIU ; 
 int /*<<< orphan*/  LLCP_MAX_MIUX ; 
 int /*<<< orphan*/  LLCP_MAX_RW ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct nfc_llcp_local* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  llcp_devices ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct nfc_llcp_local*) ; 
 int /*<<< orphan*/  nfc_llcp_rx_work ; 
 int /*<<< orphan*/  nfc_llcp_sdreq_timeout_work ; 
 int /*<<< orphan*/  nfc_llcp_sdreq_timer ; 
 int /*<<< orphan*/  nfc_llcp_symm_timer ; 
 int /*<<< orphan*/  nfc_llcp_timeout_work ; 
 int /*<<< orphan*/  nfc_llcp_tx_work ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC12(struct nfc_dev *ndev)
{
	struct nfc_llcp_local *local;

	local = FUNC5(sizeof(struct nfc_llcp_local), GFP_KERNEL);
	if (local == NULL)
		return -ENOMEM;

	local->dev = ndev;
	FUNC1(&local->list);
	FUNC4(&local->ref);
	FUNC7(&local->sdp_lock);
	FUNC11(&local->link_timer, nfc_llcp_symm_timer, 0);

	FUNC10(&local->tx_queue);
	FUNC2(&local->tx_work, nfc_llcp_tx_work);

	local->rx_pending = NULL;
	FUNC2(&local->rx_work, nfc_llcp_rx_work);

	FUNC2(&local->timeout_work, nfc_llcp_timeout_work);

	FUNC9(&local->sockets.lock);
	FUNC9(&local->connecting_sockets.lock);
	FUNC9(&local->raw_sockets.lock);

	local->lto = 150; /* 1500 ms */
	local->rw = LLCP_MAX_RW;
	local->miux = FUNC3(LLCP_MAX_MIUX);
	local->local_wks = 0x1; /* LLC Link Management */

	FUNC8(local);

	local->remote_miu = LLCP_DEFAULT_MIU;
	local->remote_lto = LLCP_DEFAULT_LTO;

	FUNC7(&local->sdreq_lock);
	FUNC0(&local->pending_sdreqs);
	FUNC11(&local->sdreq_timer, nfc_llcp_sdreq_timer, 0);
	FUNC2(&local->sdreq_timeout_work, nfc_llcp_sdreq_timeout_work);

	FUNC6(&local->list, &llcp_devices);

	return 0;
}