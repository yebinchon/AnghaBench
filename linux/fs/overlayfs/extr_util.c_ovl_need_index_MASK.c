#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dentry {int /*<<< orphan*/  d_sb; } ;
struct TYPE_2__ {int i_nlink; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 struct dentry* FUNC2 (struct dentry*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

bool FUNC5(struct dentry *dentry)
{
	struct dentry *lower = FUNC2(dentry);

	if (!lower || !FUNC4(dentry->d_sb))
		return false;

	/* Index all files for NFS export and consistency verification */
	if (FUNC3(dentry->d_sb))
		return true;

	/* Index only lower hardlinks on copy up */
	if (!FUNC1(lower) && FUNC0(lower)->i_nlink > 1)
		return true;

	return false;
}