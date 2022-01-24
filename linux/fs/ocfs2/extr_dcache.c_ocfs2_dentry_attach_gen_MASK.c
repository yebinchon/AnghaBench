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
struct dentry {void* d_fsdata; struct dentry* d_parent; } ;
struct TYPE_2__ {unsigned long ip_dir_lock_gen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 

void FUNC3(struct dentry *dentry)
{
	unsigned long gen =
		FUNC1(FUNC2(dentry->d_parent))->ip_dir_lock_gen;
	FUNC0(FUNC2(dentry));
	dentry->d_fsdata = (void *)gen;
}