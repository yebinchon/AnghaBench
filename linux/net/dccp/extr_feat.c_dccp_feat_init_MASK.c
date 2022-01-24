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
typedef  int u8 ;
struct sock {int dummy; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {struct list_head dccps_featneg; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCCPF_CCID ; 
 int /*<<< orphan*/  DCCPF_ECN_INCAPABLE ; 
 int /*<<< orphan*/  DCCPF_SEQUENCE_WINDOW ; 
 int /*<<< orphan*/  DCCPF_SHORT_SEQNOS ; 
 int ENOBUFS ; 
 int FUNC0 (struct list_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct list_head*,int /*<<< orphan*/ ,int,int,int*,int) ; 
 scalar_t__ FUNC2 (int**,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int) ; 
 TYPE_1__* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int /*<<< orphan*/  sysctl_dccp_rx_ccid ; 
 int /*<<< orphan*/  sysctl_dccp_sequence_window ; 
 int /*<<< orphan*/  sysctl_dccp_tx_ccid ; 

int FUNC6(struct sock *sk)
{
	struct list_head *fn = &FUNC4(sk)->dccps_featneg;
	u8 on = 1, off = 0;
	int rc;
	struct {
		u8 *val;
		u8 len;
	} tx, rx;

	/* Non-negotiable (NN) features */
	rc = FUNC0(fn, DCCPF_SEQUENCE_WINDOW, 0,
				    sysctl_dccp_sequence_window);
	if (rc)
		return rc;

	/* Server-priority (SP) features */

	/* Advertise that short seqnos are not supported (7.6.1) */
	rc = FUNC1(fn, DCCPF_SHORT_SEQNOS, true, true, &off, 1);
	if (rc)
		return rc;

	/* RFC 4340 12.1: "If a DCCP is not ECN capable, ..." */
	rc = FUNC1(fn, DCCPF_ECN_INCAPABLE, true, true, &on, 1);
	if (rc)
		return rc;

	/*
	 * We advertise the available list of CCIDs and reorder according to
	 * preferences, to avoid failure resulting from negotiating different
	 * singleton values (which always leads to failure).
	 * These settings can still (later) be overridden via sockopts.
	 */
	if (FUNC2(&tx.val, &tx.len))
		return -ENOBUFS;
	if (FUNC2(&rx.val, &rx.len)) {
		FUNC5(tx.val);
		return -ENOBUFS;
	}

	if (!FUNC3(sysctl_dccp_tx_ccid, tx.val, tx.len) ||
	    !FUNC3(sysctl_dccp_rx_ccid, rx.val, rx.len))
		goto free_ccid_lists;

	rc = FUNC1(fn, DCCPF_CCID, true, false, tx.val, tx.len);
	if (rc)
		goto free_ccid_lists;

	rc = FUNC1(fn, DCCPF_CCID, false, false, rx.val, rx.len);

free_ccid_lists:
	FUNC5(tx.val);
	FUNC5(rx.val);
	return rc;
}