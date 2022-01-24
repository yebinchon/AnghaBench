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
struct aa_ns {int /*<<< orphan*/  labels; int /*<<< orphan*/  lock; } ;
struct aa_label {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct aa_label* FUNC1 (struct aa_label*) ; 
 int /*<<< orphan*/  FUNC2 (struct aa_label*) ; 
 struct aa_label* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct aa_ns *ns)
{
	struct aa_label *label;

	FUNC0(!ns);
	FUNC0(!FUNC4(&ns->lock));

	do {
		label = FUNC3(&ns->labels);
		if (label) {
			struct aa_label *l = FUNC1(label);

			FUNC2(l);
			FUNC2(label);
		}
	} while (label);
}