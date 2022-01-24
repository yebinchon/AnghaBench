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
struct ovl_layer {int /*<<< orphan*/  idx; TYPE_1__* mnt; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {struct dentry* mnt_root; } ;

/* Variables and functions */
 int ECHILD ; 
 struct dentry* FUNC0 (int) ; 
 int EXDEV ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 int FUNC2 (struct dentry*) ; 
 int FUNC3 (struct dentry*) ; 
 struct dentry* FUNC4 (struct dentry*) ; 
 struct dentry* FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 struct dentry* FUNC7 (struct dentry*,int /*<<< orphan*/ ) ; 
 struct dentry* FUNC8 (struct super_block*,struct dentry*,struct ovl_layer*) ; 
 struct dentry* FUNC9 (struct dentry*,struct dentry*,struct ovl_layer*) ; 
 int /*<<< orphan*/  FUNC10 (char*,struct dentry*,int /*<<< orphan*/ ,struct dentry*,int) ; 

__attribute__((used)) static struct dentry *FUNC11(struct super_block *sb,
				      struct dentry *real,
				      struct ovl_layer *layer)
{
	struct dentry *connected;
	int err = 0;

	connected = FUNC8(sb, real, layer);
	if (FUNC1(connected))
		return connected;

	while (!err) {
		struct dentry *next, *this;
		struct dentry *parent = NULL;
		struct dentry *real_connected = FUNC7(connected,
								   layer->idx);

		if (real_connected == real)
			break;

		/* Find the topmost dentry not yet connected */
		next = FUNC4(real);
		for (;;) {
			parent = FUNC5(next);

			if (parent == real_connected)
				break;

			/*
			 * If real has been moved out of 'real_connected',
			 * we will not find 'real_connected' and hit the layer
			 * root. In that case, we need to restart connecting.
			 * This game can go on forever in the worst case. We
			 * may want to consider taking s_vfs_rename_mutex if
			 * this happens more than once.
			 */
			if (parent == layer->mnt->mnt_root) {
				FUNC6(connected);
				connected = FUNC4(sb->s_root);
				break;
			}

			/*
			 * If real file has been moved out of the layer root
			 * directory, we will eventully hit the real fs root.
			 * This cannot happen by legit overlay rename, so we
			 * return error in that case.
			 */
			if (parent == next) {
				err = -EXDEV;
				break;
			}

			FUNC6(next);
			next = parent;
		}

		if (!err) {
			this = FUNC9(connected, next, layer);
			if (FUNC1(this))
				err = FUNC2(this);

			/*
			 * Lookup of child in overlay can fail when racing with
			 * overlay rename of child away from 'connected' parent.
			 * In this case, we need to restart the lookup from the
			 * top, because we cannot trust that 'real_connected' is
			 * still an ancestor of 'real'. There is a good chance
			 * that the renamed overlay ancestor is now in cache, so
			 * ovl_lookup_real_ancestor() will find it and we can
			 * continue to connect exactly from where lookup failed.
			 */
			if (err == -ECHILD) {
				this = FUNC8(sb, real,
								layer);
				err = FUNC3(this);
			}
			if (!err) {
				FUNC6(connected);
				connected = this;
			}
		}

		FUNC6(parent);
		FUNC6(next);
	}

	if (err)
		goto fail;

	return connected;

fail:
	FUNC10("overlayfs: failed to lookup by real (%pd2, layer=%d, connected=%pd2, err=%i)\n",
			    real, layer->idx, connected, err);
	FUNC6(connected);
	return FUNC0(err);
}