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
struct super_block {int dummy; } ;
struct qstr {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCACHE_NORCU ; 
 struct dentry* FUNC0 (struct super_block*,struct qstr const*) ; 
 scalar_t__ FUNC1 (struct dentry*) ; 

struct dentry *FUNC2(struct super_block *sb, const struct qstr *name)
{
	struct dentry *dentry = FUNC0(sb, name);
	if (FUNC1(dentry))
		dentry->d_flags |= DCACHE_NORCU;
	return dentry;
}