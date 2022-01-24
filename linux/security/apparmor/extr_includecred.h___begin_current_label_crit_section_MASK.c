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
 struct aa_label* FUNC0 () ; 
 struct aa_label* FUNC1 (struct aa_label*) ; 
 scalar_t__ FUNC2 (struct aa_label*) ; 

__attribute__((used)) static inline struct aa_label *FUNC3(void)
{
	struct aa_label *label = FUNC0();

	if (FUNC2(label))
		label = FUNC1(label);

	return label;
}