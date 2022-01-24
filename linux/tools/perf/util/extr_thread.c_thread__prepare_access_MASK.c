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
struct thread {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct thread*) ; 
 scalar_t__ dwarf_callchain_users ; 

__attribute__((used)) static int FUNC1(struct thread *thread)
{
	int err = 0;

	if (dwarf_callchain_users)
		err = FUNC0(thread);

	return err;
}