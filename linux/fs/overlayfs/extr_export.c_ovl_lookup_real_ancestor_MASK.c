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
struct super_block {struct dentry* s_root; } ;
struct ovl_layer {TYPE_1__* mnt; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {struct dentry* mnt_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXDEV ; 
 struct dentry* FUNC1 (struct dentry*) ; 
 struct dentry* FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 struct dentry* FUNC4 (struct super_block*,struct dentry*,struct ovl_layer*) ; 

__attribute__((used)) static struct dentry *FUNC5(struct super_block *sb,
					       struct dentry *real,
					       struct ovl_layer *layer)
{
	struct dentry *next, *parent = NULL;
	struct dentry *ancestor = FUNC0(-EIO);

	if (real == layer->mnt->mnt_root)
		return FUNC1(sb->s_root);

	/* Find the topmost indexed or hashed ancestor */
	next = FUNC1(real);
	for (;;) {
		parent = FUNC2(next);

		/*
		 * Lookup a matching overlay dentry in inode/dentry
		 * cache or in index by real inode.
		 */
		ancestor = FUNC4(sb, next, layer);
		if (ancestor)
			break;

		if (parent == layer->mnt->mnt_root) {
			ancestor = FUNC1(sb->s_root);
			break;
		}

		/*
		 * If @real has been moved out of the layer root directory,
		 * we will eventully hit the real fs root. This cannot happen
		 * by legit overlay rename, so we return error in that case.
		 */
		if (parent == next) {
			ancestor = FUNC0(-EXDEV);
			break;
		}

		FUNC3(next);
		next = parent;
	}

	FUNC3(parent);
	FUNC3(next);

	return ancestor;
}