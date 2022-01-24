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
struct item {unsigned long order; unsigned long index; } ;

/* Variables and functions */
 unsigned long BITS_PER_LONG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct item*) ; 

void FUNC2(struct item *item, unsigned long index)
{
	unsigned long mask;
	FUNC0(!FUNC1(item));
	FUNC0(item->order < BITS_PER_LONG);
	mask = (1UL << item->order) - 1;
	FUNC0((item->index | mask) == (index | mask));
}