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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vm_area_struct*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  file_mprotect ; 

int FUNC1(struct vm_area_struct *vma, unsigned long reqprot,
			    unsigned long prot)
{
	return FUNC0(file_mprotect, 0, vma, reqprot, prot);
}