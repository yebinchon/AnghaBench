#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct super_block {struct dentry* s_root; } ;
struct dentry {int dummy; } ;
struct TYPE_6__ {struct dentry* priv_root; } ;
struct TYPE_5__ {int /*<<< orphan*/  i_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  PRIVROOT_NAME ; 
 int FUNC1 (struct dentry*) ; 
 TYPE_4__* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  S_PRIVATE ; 
 TYPE_1__* FUNC3 (struct dentry*) ; 
 scalar_t__ FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 struct dentry* FUNC8 (int /*<<< orphan*/ ,struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xattr_lookup_poison_ops ; 

int FUNC10(struct super_block *s)
{
	struct dentry *dentry;
	int err = 0;

	/* If we don't have the privroot located yet - go find it */
	FUNC6(FUNC3(s->s_root));
	dentry = FUNC8(PRIVROOT_NAME, s->s_root,
				FUNC9(PRIVROOT_NAME));
	if (!FUNC0(dentry)) {
		FUNC2(s)->priv_root = dentry;
		FUNC5(dentry, &xattr_lookup_poison_ops);
		if (FUNC4(dentry))
			FUNC3(dentry)->i_flags |= S_PRIVATE;
	} else
		err = FUNC1(dentry);
	FUNC7(FUNC3(s->s_root));

	return err;
}