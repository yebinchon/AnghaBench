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
struct vm_area_struct {int dummy; } ;
struct mempolicy {int dummy; } ;

/* Variables and functions */
 struct mempolicy* FUNC0 (struct vm_area_struct*,unsigned long) ; 
 int /*<<< orphan*/  current ; 
 struct mempolicy* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mempolicy *FUNC2(struct vm_area_struct *vma,
						unsigned long addr)
{
	struct mempolicy *pol = FUNC0(vma, addr);

	if (!pol)
		pol = FUNC1(current);

	return pol;
}