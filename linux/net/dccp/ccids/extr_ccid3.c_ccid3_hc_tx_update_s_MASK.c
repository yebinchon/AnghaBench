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
typedef  scalar_t__ u16 ;
struct ccid3_hc_tx_sock {scalar_t__ tx_s; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ccid3_hc_tx_sock*) ; 
 scalar_t__ FUNC1 (scalar_t__,int,int) ; 

__attribute__((used)) static inline void FUNC2(struct ccid3_hc_tx_sock *hc, int len)
{
	const u16 old_s = hc->tx_s;

	hc->tx_s = FUNC1(hc->tx_s, len, 9);

	if (hc->tx_s != old_s)
		FUNC0(hc);
}