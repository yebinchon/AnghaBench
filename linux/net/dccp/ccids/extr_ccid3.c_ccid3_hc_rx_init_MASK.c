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
struct sock {int dummy; } ;
struct ccid3_hc_rx_sock {int /*<<< orphan*/  rx_hist; int /*<<< orphan*/  rx_li_hist; int /*<<< orphan*/  rx_state; } ;
struct ccid {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TFRC_RSTATE_NO_DATA ; 
 struct ccid3_hc_rx_sock* FUNC0 (struct ccid*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct ccid *ccid, struct sock *sk)
{
	struct ccid3_hc_rx_sock *hc = FUNC0(ccid);

	hc->rx_state = TFRC_RSTATE_NO_DATA;
	FUNC1(&hc->rx_li_hist);
	return FUNC2(&hc->rx_hist);
}