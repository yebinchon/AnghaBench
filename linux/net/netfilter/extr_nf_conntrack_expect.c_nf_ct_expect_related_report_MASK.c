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
struct nf_conntrack_expect {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPEXP_NEW ; 
 int FUNC0 (struct nf_conntrack_expect*,unsigned int) ; 
 int /*<<< orphan*/  nf_conntrack_expect_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct nf_conntrack_expect*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nf_conntrack_expect*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct nf_conntrack_expect *expect,
				u32 portid, int report, unsigned int flags)
{
	int ret;

	FUNC3(&nf_conntrack_expect_lock);
	ret = FUNC0(expect, flags);
	if (ret < 0)
		goto out;

	FUNC2(expect);

	FUNC4(&nf_conntrack_expect_lock);
	FUNC1(IPEXP_NEW, expect, portid, report);
	return 0;
out:
	FUNC4(&nf_conntrack_expect_lock);
	return ret;
}