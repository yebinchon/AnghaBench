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
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  depot_stack_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long*) ; 
 int KASAN_STACK_DEPTH ; 
 unsigned int FUNC1 (unsigned long*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (unsigned long*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline depot_stack_handle_t FUNC4(gfp_t flags)
{
	unsigned long entries[KASAN_STACK_DEPTH];
	unsigned int nr_entries;

	nr_entries = FUNC3(entries, FUNC0(entries), 0);
	nr_entries = FUNC1(entries, nr_entries);
	return FUNC2(entries, nr_entries, flags);
}