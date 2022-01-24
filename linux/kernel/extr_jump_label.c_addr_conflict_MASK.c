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
struct jump_entry {int dummy; } ;

/* Variables and functions */
 unsigned long JUMP_LABEL_NOP_SIZE ; 
 unsigned long FUNC0 (struct jump_entry*) ; 

__attribute__((used)) static int FUNC1(struct jump_entry *entry, void *start, void *end)
{
	if (FUNC0(entry) <= (unsigned long)end &&
	    FUNC0(entry) + JUMP_LABEL_NOP_SIZE > (unsigned long)start)
		return 1;

	return 0;
}