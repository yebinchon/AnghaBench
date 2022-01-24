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
struct tc_etf_qopt {scalar_t__ clockid; scalar_t__ delta; } ;
struct netlink_ext_ack {int dummy; } ;

/* Variables and functions */
 scalar_t__ CLOCK_TAI ; 
 int EINVAL ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 

__attribute__((used)) static inline int FUNC1(struct tc_etf_qopt *qopt,
					struct netlink_ext_ack *extack)
{
	/* Check if params comply to the following rules:
	 *	* Clockid and delta must be valid.
	 *
	 *	* Dynamic clockids are not supported.
	 *
	 *	* Delta must be a positive integer.
	 *
	 * Also note that for the HW offload case, we must
	 * expect that system clocks have been synchronized to PHC.
	 */
	if (qopt->clockid < 0) {
		FUNC0(extack, "Dynamic clockids are not supported");
		return -ENOTSUPP;
	}

	if (qopt->clockid != CLOCK_TAI) {
		FUNC0(extack, "Invalid clockid. CLOCK_TAI must be used");
		return -EINVAL;
	}

	if (qopt->delta < 0) {
		FUNC0(extack, "Delta must be positive");
		return -EINVAL;
	}

	return 0;
}