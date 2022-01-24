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
struct bitmask {unsigned int size; } ;

/* Variables and functions */
 struct bitmask* FUNC0 () ; 
 scalar_t__ FUNC1 (struct bitmask*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int,struct bitmask*) ; 

__attribute__((used)) static bool FUNC3(int node)
{
	struct bitmask *cpu = FUNC0();
	unsigned int i;

	if (cpu && !FUNC2(node, cpu)) {
		for (i = 0; i < cpu->size; i++) {
			if (FUNC1(cpu, i))
				return true;
		}
	}

	return false; /* lets fall back to nocpus safely */
}