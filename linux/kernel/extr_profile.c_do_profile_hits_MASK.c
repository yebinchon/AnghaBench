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
 scalar_t__ _stext ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *) ; 
 size_t FUNC1 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/ * prof_buffer ; 
 scalar_t__ prof_len ; 
 unsigned long prof_shift ; 

__attribute__((used)) static void FUNC2(int type, void *__pc, unsigned int nr_hits)
{
	unsigned long pc;
	pc = ((unsigned long)__pc - (unsigned long)_stext) >> prof_shift;
	FUNC0(nr_hits, &prof_buffer[FUNC1(pc, prof_len - 1)]);
}