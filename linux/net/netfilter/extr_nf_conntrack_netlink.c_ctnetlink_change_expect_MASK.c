#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nlattr {int dummy; } ;
struct TYPE_3__ {scalar_t__ expires; } ;
struct nf_conntrack_expect {TYPE_1__ timeout; } ;

/* Variables and functions */
 size_t CTA_EXPECT_TIMEOUT ; 
 int ETIME ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr const* const) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct nf_conntrack_expect *x,
			const struct nlattr * const cda[])
{
	if (cda[CTA_EXPECT_TIMEOUT]) {
		if (!FUNC1(&x->timeout))
			return -ETIME;

		x->timeout.expires = jiffies +
			FUNC3(FUNC2(cda[CTA_EXPECT_TIMEOUT])) * HZ;
		FUNC0(&x->timeout);
	}
	return 0;
}