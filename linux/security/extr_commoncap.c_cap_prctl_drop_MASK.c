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
struct cred {int /*<<< orphan*/  cap_bset; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SETPCAP ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int FUNC2 (struct cred*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cred* FUNC5 () ; 

__attribute__((used)) static int FUNC6(unsigned long cap)
{
	struct cred *new;

	if (!FUNC4(FUNC3(), CAP_SETPCAP))
		return -EPERM;
	if (!FUNC1(cap))
		return -EINVAL;

	new = FUNC5();
	if (!new)
		return -ENOMEM;
	FUNC0(new->cap_bset, cap);
	return FUNC2(new);
}