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
struct ovl_path {struct dentry* dentry; struct ovl_layer* layer; } ;
struct ovl_layer {int /*<<< orphan*/  mnt; } ;
struct ovl_fs {int /*<<< orphan*/  upper_mnt; } ;
struct dentry {int d_flags; } ;

/* Variables and functions */
 int DCACHE_DISCONNECTED ; 
 int /*<<< orphan*/  ENOENT ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 scalar_t__ FUNC2 (struct dentry*) ; 
 struct dentry* FUNC3 (struct super_block*,struct dentry*,struct ovl_layer*) ; 
 struct dentry* FUNC4 (struct super_block*,struct dentry*,struct ovl_path*,struct dentry*) ; 

__attribute__((used)) static struct dentry *FUNC5(struct super_block *sb,
				     struct dentry *upper,
				     struct ovl_path *lowerpath,
				     struct dentry *index)
{
	struct ovl_fs *ofs = sb->s_fs_info;
	struct ovl_layer upper_layer = { .mnt = ofs->upper_mnt };
	struct ovl_layer *layer = upper ? &upper_layer : lowerpath->layer;
	struct dentry *real = upper ?: (index ?: lowerpath->dentry);

	/*
	 * Obtain a disconnected overlay dentry from a non-dir real dentry
	 * and index.
	 */
	if (!FUNC1(real))
		return FUNC4(sb, upper, lowerpath, index);

	/* Removed empty directory? */
	if ((real->d_flags & DCACHE_DISCONNECTED) || FUNC2(real))
		return FUNC0(-ENOENT);

	/*
	 * If real dentry is connected and hashed, get a connected overlay
	 * dentry whose real dentry is @real.
	 */
	return FUNC3(sb, real, layer);
}