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
struct aa_label {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aa_label*) ; 
 int /*<<< orphan*/  FUNC1 (struct aa_label*) ; 

__attribute__((used)) static void FUNC2(struct aa_label *label, struct aa_label *new)
{
	if (label != new)
		/* need to free directly to break circular ref with proxy */
		FUNC0(new);
	else
		FUNC1(new);
}