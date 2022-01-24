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
typedef  scalar_t__ u64 ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int ERANGE ; 
 scalar_t__ NSEC_PER_MSEC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr const*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

__attribute__((used)) static int FUNC4(const struct nlattr *nla, u64 *result)
{
	u64 ms = FUNC0(FUNC2(nla));
	u64 max = (u64)(~((u64)0));

	max = FUNC1(max, NSEC_PER_MSEC);
	if (ms >= max)
		return -ERANGE;

	ms *= NSEC_PER_MSEC;
	*result = FUNC3(ms);
	return 0;
}