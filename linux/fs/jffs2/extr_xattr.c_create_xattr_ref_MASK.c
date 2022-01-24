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
struct jffs2_xattr_ref {struct jffs2_xattr_ref* next; struct jffs2_xattr_datum* xd; struct jffs2_inode_cache* ic; } ;
struct jffs2_xattr_datum {int dummy; } ;
struct jffs2_sb_info {int dummy; } ;
struct jffs2_inode_cache {struct jffs2_xattr_ref* xref; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct jffs2_xattr_ref* FUNC0 (int) ; 
 struct jffs2_xattr_ref* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct jffs2_xattr_ref*) ; 
 int FUNC3 (struct jffs2_sb_info*,struct jffs2_xattr_ref*) ; 

__attribute__((used)) static struct jffs2_xattr_ref *FUNC4(struct jffs2_sb_info *c, struct jffs2_inode_cache *ic,
						struct jffs2_xattr_datum *xd)
{
	/* must be called under down_write(xattr_sem) */
	struct jffs2_xattr_ref *ref;
	int ret;

	ref = FUNC1();
	if (!ref)
		return FUNC0(-ENOMEM);
	ref->ic = ic;
	ref->xd = xd;

	ret = FUNC3(c, ref);
	if (ret) {
		FUNC2(ref);
		return FUNC0(ret);
	}

	/* Chain to inode */
	ref->next = ic->xref;
	ic->xref = ref;

	return ref; /* success */
}