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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(void)
{
	/* Changing qsize will cause kernel to free and alloc a new
	 * bpf_cpu_map_entry, with an associated/complicated tear-down
	 * procedure.
	 */
	FUNC0(1,  1024, 0, false);
	FUNC0(1,     8, 0, false);
	FUNC0(1, 16000, 0, false);
}