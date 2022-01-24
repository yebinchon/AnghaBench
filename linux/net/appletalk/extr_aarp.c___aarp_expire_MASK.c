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
struct aarp_entry {int /*<<< orphan*/  packet_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aarp_entry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct aarp_entry *a)
{
	FUNC1(&a->packet_queue);
	FUNC0(a);
}