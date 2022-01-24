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
struct ccid3_hc_rx_sock {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dccps_hc_rx_ccid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct ccid3_hc_rx_sock* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct sock const*) ; 

__attribute__((used)) static inline struct ccid3_hc_rx_sock *FUNC3(const struct sock *sk)
{
	struct ccid3_hc_rx_sock *hcrx = FUNC1(FUNC2(sk)->dccps_hc_rx_ccid);
	FUNC0(hcrx == NULL);
	return hcrx;
}