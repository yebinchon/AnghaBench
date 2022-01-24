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
struct super_block {struct ovl_fs* s_fs_info; } ;
struct ovl_layer {scalar_t__ idx; int /*<<< orphan*/  mnt; } ;
struct ovl_fs {scalar_t__ indexdir; int /*<<< orphan*/  upper_mnt; } ;
struct inode {int dummy; } ;
typedef  struct inode dentry ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 struct inode* FUNC0 (struct inode*) ; 
 struct inode* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 scalar_t__ FUNC4 (int) ; 
 struct inode* FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 struct inode* FUNC9 (struct inode*,scalar_t__) ; 
 struct inode* FUNC10 (struct ovl_fs*,struct inode*) ; 
 struct inode* FUNC11 (struct ovl_fs*,int /*<<< orphan*/ *,struct inode*,int) ; 
 struct inode* FUNC12 (struct super_block*,struct inode*,int) ; 
 struct inode* FUNC13 (struct super_block*,struct inode*,struct ovl_layer*) ; 

__attribute__((used)) static struct dentry *FUNC14(struct super_block *sb,
					    struct dentry *real,
					    struct ovl_layer *layer)
{
	struct ovl_fs *ofs = sb->s_fs_info;
	struct ovl_layer upper_layer = { .mnt = ofs->upper_mnt };
	struct dentry *index = NULL;
	struct dentry *this = NULL;
	struct inode *inode;

	/*
	 * Decoding upper dir from index is expensive, so first try to lookup
	 * overlay dentry in inode/dcache.
	 */
	inode = FUNC12(sb, real, !layer->idx);
	if (FUNC2(inode))
		return FUNC0(inode);
	if (inode) {
		this = FUNC5(inode);
		FUNC8(inode);
	}

	/*
	 * For decoded lower dir file handle, lookup index by origin to check
	 * if lower dir was copied up and and/or removed.
	 */
	if (!this && layer->idx && ofs->indexdir && !FUNC4(!FUNC6(real))) {
		index = FUNC11(ofs, NULL, real, false);
		if (FUNC2(index))
			return index;
	}

	/* Get connected upper overlay dir from index */
	if (index) {
		struct dentry *upper = FUNC10(ofs, index);

		FUNC7(index);
		if (FUNC3(upper))
			return upper;

		/*
		 * ovl_lookup_real() in lower layer may call recursively once to
		 * ovl_lookup_real() in upper layer. The first level call walks
		 * back lower parents to the topmost indexed parent. The second
		 * recursive call walks back from indexed upper to the topmost
		 * connected/hashed upper parent (or up to root).
		 */
		this = FUNC13(sb, upper, &upper_layer);
		FUNC7(upper);
	}

	if (FUNC3(this))
		return this;

	if (FUNC4(FUNC9(this, layer->idx) != real)) {
		FUNC7(this);
		this = FUNC1(-EIO);
	}

	return this;
}