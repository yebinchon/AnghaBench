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
struct dentry {int /*<<< orphan*/  d_lock; struct dentry* d_parent; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 struct dentry* FUNC1 (struct dentry*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline struct dentry *FUNC4(struct dentry *dentry)
{
	struct dentry *parent = dentry->d_parent;
	if (FUNC0(dentry))
		return NULL;
	if (FUNC2(FUNC3(&parent->d_lock)))
		return parent;
	return FUNC1(dentry);
}