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
struct dccp_sock {int /*<<< orphan*/ * dccps_hc_tx_ccid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct sock*) ; 
 struct dccp_sock* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 

__attribute__((used)) static void FUNC3(struct sock *sk)
{
	struct dccp_sock *dp = FUNC1(sk);

	FUNC0(dp->dccps_hc_tx_ccid, sk);
	dp->dccps_hc_tx_ccid = NULL;
	FUNC2(sk);
}