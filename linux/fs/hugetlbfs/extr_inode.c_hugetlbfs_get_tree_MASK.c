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
struct fs_context {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct fs_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hugetlbfs_fill_super ; 
 int FUNC1 (struct fs_context*) ; 

__attribute__((used)) static int FUNC2(struct fs_context *fc)
{
	int err = FUNC1(fc);
	if (err)
		return err;
	return FUNC0(fc, hugetlbfs_fill_super);
}