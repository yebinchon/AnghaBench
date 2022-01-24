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
struct sock {int dummy; } ;
struct ccid3_hc_tx_sock {int /*<<< orphan*/  tx_hist; } ;
struct TYPE_2__ {int /*<<< orphan*/  dccps_gss; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct ccid3_hc_tx_sock* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct ccid3_hc_tx_sock*,unsigned int) ; 
 TYPE_1__* FUNC3 (struct sock*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct sock *sk, unsigned int len)
{
	struct ccid3_hc_tx_sock *hc = FUNC1(sk);

	FUNC2(hc, len);

	if (FUNC4(&hc->tx_hist, FUNC3(sk)->dccps_gss))
		FUNC0("packet history - out of memory!");
}