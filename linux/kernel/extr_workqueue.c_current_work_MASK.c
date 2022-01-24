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
struct worker {struct work_struct* current_work; } ;
struct work_struct {int dummy; } ;

/* Variables and functions */
 struct worker* FUNC0 () ; 

struct work_struct *FUNC1(void)
{
	struct worker *worker = FUNC0();

	return worker ? worker->current_work : NULL;
}