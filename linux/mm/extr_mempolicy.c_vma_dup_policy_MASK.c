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
struct vm_area_struct {struct mempolicy* vm_policy; } ;
struct mempolicy {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mempolicy*) ; 
 int FUNC1 (struct mempolicy*) ; 
 struct mempolicy* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vm_area_struct*) ; 

int FUNC4(struct vm_area_struct *src, struct vm_area_struct *dst)
{
	struct mempolicy *pol = FUNC2(FUNC3(src));

	if (FUNC0(pol))
		return FUNC1(pol);
	dst->vm_policy = pol;
	return 0;
}