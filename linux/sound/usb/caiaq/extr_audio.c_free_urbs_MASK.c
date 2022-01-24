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
struct urb {struct urb** transfer_buffer; } ;

/* Variables and functions */
 int N_URBS ; 
 int /*<<< orphan*/  FUNC0 (struct urb**) ; 
 int /*<<< orphan*/  FUNC1 (struct urb*) ; 
 int /*<<< orphan*/  FUNC2 (struct urb*) ; 

__attribute__((used)) static void FUNC3(struct urb **urbs)
{
	int i;

	if (!urbs)
		return;

	for (i = 0; i < N_URBS; i++) {
		if (!urbs[i])
			continue;

		FUNC2(urbs[i]);
		FUNC0(urbs[i]->transfer_buffer);
		FUNC1(urbs[i]);
	}

	FUNC0(urbs);
}