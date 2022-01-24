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
struct aa_profile {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 struct aa_profile* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static int FUNC3(struct aa_profile *profile)
{
	int depth = 0;

	FUNC1();
	for (depth = 0; profile; profile = FUNC0(profile->parent))
		depth++;
	FUNC2();

	return depth;
}