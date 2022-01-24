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
typedef  int /*<<< orphan*/  u32 ;
struct fib6_nh {int fib_nh_flags; int /*<<< orphan*/  fib_nh_dev; } ;

/* Variables and functions */
 int RT6_LOOKUP_F_IGNORE_LINKSTATE ; 
 int RT6_LOOKUP_F_REACHABLE ; 
 int RT6_NUD_FAIL_DO_RR ; 
 int RT6_NUD_FAIL_HARD ; 
 int RTNH_F_DEAD ; 
 int RTNH_F_LINKDOWN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fib6_nh*) ; 
 int FUNC2 (struct fib6_nh*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static bool FUNC3(struct fib6_nh *nh, u32 fib6_flags,
		       int oif, int strict, int *mpri, bool *do_rr)
{
	bool match_do_rr = false;
	bool rc = false;
	int m;

	if (nh->fib_nh_flags & RTNH_F_DEAD)
		goto out;

	if (FUNC0(nh->fib_nh_dev) &&
	    nh->fib_nh_flags & RTNH_F_LINKDOWN &&
	    !(strict & RT6_LOOKUP_F_IGNORE_LINKSTATE))
		goto out;

	m = FUNC2(nh, fib6_flags, oif, strict);
	if (m == RT6_NUD_FAIL_DO_RR) {
		match_do_rr = true;
		m = 0; /* lowest valid score */
	} else if (m == RT6_NUD_FAIL_HARD) {
		goto out;
	}

	if (strict & RT6_LOOKUP_F_REACHABLE)
		FUNC1(nh);

	/* note that m can be RT6_NUD_FAIL_PROBE at this point */
	if (m > *mpri) {
		*do_rr = match_do_rr;
		*mpri = m;
		rc = true;
	}
out:
	return rc;
}