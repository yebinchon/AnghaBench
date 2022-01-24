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
struct ccid3_hc_tx_sock {int /*<<< orphan*/  tx_hist; int /*<<< orphan*/  tx_no_feedback_timer; } ;

/* Variables and functions */
 struct ccid3_hc_tx_sock* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct sock *sk)
{
	struct ccid3_hc_tx_sock *hc = FUNC0(sk);

	FUNC1(sk, &hc->tx_no_feedback_timer);
	FUNC2(&hc->tx_hist);
}