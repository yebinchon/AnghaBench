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
struct aarp_entry {struct aarp_entry* next; int /*<<< orphan*/  expires_at; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aarp_entry*) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct aarp_entry **n)
{
	struct aarp_entry *t;

	while (*n)
		/* Expired ? */
		if (FUNC1(jiffies, (*n)->expires_at)) {
			t = *n;
			*n = (*n)->next;
			FUNC0(t);
		} else
			n = &((*n)->next);
}