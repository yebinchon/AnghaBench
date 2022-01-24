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
struct dentry {int /*<<< orphan*/  d_parent; int /*<<< orphan*/  d_flags; int /*<<< orphan*/  d_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCACHE_DENTRY_CURSOR ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 

struct dentry *FUNC2(struct dentry * parent)
{
	struct dentry *dentry = FUNC0(parent->d_sb);
	if (dentry) {
		dentry->d_flags |= DCACHE_DENTRY_CURSOR;
		dentry->d_parent = FUNC1(parent);
	}
	return dentry;
}