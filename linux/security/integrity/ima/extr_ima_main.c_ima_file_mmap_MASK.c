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
typedef  int /*<<< orphan*/  u32 ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAY_EXEC ; 
 int /*<<< orphan*/  MMAP_CHECK ; 
 unsigned long PROT_EXEC ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC3(struct file *file, unsigned long prot)
{
	u32 secid;

	if (file && (prot & PROT_EXEC)) {
		FUNC2(current, &secid);
		return FUNC1(file, FUNC0(), secid, NULL,
					   0, MAY_EXEC, MMAP_CHECK);
	}

	return 0;
}