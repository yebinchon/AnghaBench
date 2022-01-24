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
struct root_domain {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct root_domain*) ; 
 int /*<<< orphan*/  FUNC1 (struct root_domain*) ; 
 struct root_domain* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct root_domain *FUNC3(void)
{
	struct root_domain *rd;

	rd = FUNC2(sizeof(*rd), GFP_KERNEL);
	if (!rd)
		return NULL;

	if (FUNC0(rd) != 0) {
		FUNC1(rd);
		return NULL;
	}

	return rd;
}