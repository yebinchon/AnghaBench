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
struct mem_section {int /*<<< orphan*/  section_mem_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  SECTION_MARKED_PRESENT ; 
 unsigned long __highest_present_section_nr ; 
 unsigned long FUNC0 (struct mem_section*) ; 

__attribute__((used)) static void FUNC1(struct mem_section *ms)
{
	unsigned long section_nr = FUNC0(ms);

	if (section_nr > __highest_present_section_nr)
		__highest_present_section_nr = section_nr;

	ms->section_mem_map |= SECTION_MARKED_PRESENT;
}