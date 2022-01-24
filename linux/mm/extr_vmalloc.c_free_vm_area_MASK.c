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
struct vm_struct {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct vm_struct*) ; 
 struct vm_struct* FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct vm_struct *area)
{
	struct vm_struct *ret;
	ret = FUNC2(area->addr);
	FUNC0(ret != area);
	FUNC1(area);
}