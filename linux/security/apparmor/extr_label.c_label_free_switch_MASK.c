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
struct aa_label {int flags; } ;

/* Variables and functions */
 int FLAG_NS_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct aa_label*) ; 
 scalar_t__ FUNC3 (struct aa_label*) ; 
 int /*<<< orphan*/  FUNC4 (struct aa_label*) ; 
 int /*<<< orphan*/  FUNC5 (struct aa_label*) ; 

__attribute__((used)) static void FUNC6(struct aa_label *label)
{
	if (label->flags & FLAG_NS_COUNT)
		FUNC0(FUNC4(label));
	else if (FUNC3(label))
		FUNC1(FUNC5(label));
	else
		FUNC2(label);
}