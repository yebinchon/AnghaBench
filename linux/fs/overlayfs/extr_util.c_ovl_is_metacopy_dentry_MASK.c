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
struct ovl_entry {int numlower; } ;
struct dentry {struct ovl_entry* d_fsdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 scalar_t__ FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

bool FUNC4(struct dentry *dentry)
{
	struct ovl_entry *oe = dentry->d_fsdata;

	if (!FUNC1(dentry))
		return false;

	if (FUNC2(dentry)) {
		if (!FUNC3(FUNC0(dentry)))
			return true;
		return false;
	}

	return (oe->numlower > 1);
}