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
struct seq_file {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  dyn_event_list ; 
 void* FUNC0 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void *FUNC1(struct seq_file *m, void *v, loff_t *pos)
{
	return FUNC0(v, &dyn_event_list, pos);
}