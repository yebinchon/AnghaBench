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
struct task_struct {int dummy; } ;

/* Variables and functions */
 char FUNC0 (struct task_struct const*) ; 
 unsigned long FUNC1 (char*) ; 

unsigned long FUNC2(const struct task_struct *p, unsigned long mask)
{
	char state[] = { FUNC0(p), '\0' };
	return (mask & FUNC1(state)) != 0;
}