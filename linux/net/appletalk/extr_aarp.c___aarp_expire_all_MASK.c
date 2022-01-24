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
struct aarp_entry {struct aarp_entry* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aarp_entry*) ; 

__attribute__((used)) static void FUNC1(struct aarp_entry **n)
{
	struct aarp_entry *t;

	while (*n) {
		t = *n;
		*n = (*n)->next;
		FUNC0(t);
	}
}