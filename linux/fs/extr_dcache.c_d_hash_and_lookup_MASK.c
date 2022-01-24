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
struct qstr {int /*<<< orphan*/  len; int /*<<< orphan*/  name; int /*<<< orphan*/  hash; } ;
struct dentry {int d_flags; TYPE_1__* d_op; } ;
struct TYPE_2__ {int (* d_hash ) (struct dentry*,struct qstr*) ;} ;

/* Variables and functions */
 int DCACHE_OP_HASH ; 
 struct dentry* FUNC0 (int) ; 
 struct dentry* FUNC1 (struct dentry*,struct qstr*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct dentry*,struct qstr*) ; 
 scalar_t__ FUNC4 (int) ; 

struct dentry *FUNC5(struct dentry *dir, struct qstr *name)
{
	/*
	 * Check for a fs-specific hash function. Note that we must
	 * calculate the standard hash first, as the d_op->d_hash()
	 * routine may choose to leave the hash value unchanged.
	 */
	name->hash = FUNC2(dir, name->name, name->len);
	if (dir->d_flags & DCACHE_OP_HASH) {
		int err = dir->d_op->d_hash(dir, name);
		if (FUNC4(err < 0))
			return FUNC0(err);
	}
	return FUNC1(dir, name);
}