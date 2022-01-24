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
 int /*<<< orphan*/  FUNC0 (int,void*,unsigned int) ; 
 int /*<<< orphan*/  prof_buffer ; 
 int prof_on ; 

void FUNC1(int type, void *__pc, unsigned int nr_hits)
{
	if (prof_on != type || !prof_buffer)
		return;
	FUNC0(type, __pc, nr_hits);
}