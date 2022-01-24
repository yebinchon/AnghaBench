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
struct dentry {int dummy; } ;
struct aa_ns {int /*<<< orphan*/  rawdata_list; int /*<<< orphan*/  revision; int /*<<< orphan*/  lock; } ;
struct aa_loaddata {int /*<<< orphan*/  list; int /*<<< orphan*/  ns; int /*<<< orphan*/  size; struct dentry** dents; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_size; } ;

/* Variables and functions */
 size_t AAFS_LOADDATA_ABI ; 
 size_t AAFS_LOADDATA_DATA ; 
 size_t AAFS_LOADDATA_DIR ; 
 size_t AAFS_LOADDATA_HASH ; 
 size_t AAFS_LOADDATA_REVISION ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 int FUNC2 (struct dentry*) ; 
 int S_IFREG ; 
 scalar_t__ aa_g_hash_policy ; 
 int /*<<< orphan*/  FUNC3 (struct aa_ns*) ; 
 struct dentry* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dentry* FUNC5 (char*,int,struct dentry*,struct aa_loaddata*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct aa_ns*) ; 
 int /*<<< orphan*/  rawdata_fops ; 
 int /*<<< orphan*/  FUNC11 (struct aa_loaddata*) ; 
 int /*<<< orphan*/  seq_rawdata_abi_fops ; 
 int /*<<< orphan*/  seq_rawdata_hash_fops ; 
 int /*<<< orphan*/  seq_rawdata_revision_fops ; 

int FUNC12(struct aa_ns *ns, struct aa_loaddata *rawdata)
{
	struct dentry *dent, *dir;

	FUNC0(!ns);
	FUNC0(!rawdata);
	FUNC0(!FUNC9(&ns->lock));
	FUNC0(!FUNC10(ns));

	/*
	 * just use ns revision dir was originally created at. This is
	 * under ns->lock and if load is successful revision will be
	 * bumped and is guaranteed to be unique
	 */
	rawdata->name = FUNC7(GFP_KERNEL, "%ld", ns->revision);
	if (!rawdata->name)
		return -ENOMEM;

	dir = FUNC4(rawdata->name, FUNC10(ns));
	if (FUNC1(dir))
		/* ->name freed when rawdata freed */
		return FUNC2(dir);
	rawdata->dents[AAFS_LOADDATA_DIR] = dir;

	dent = FUNC5("abi", S_IFREG | 0444, dir, rawdata,
				      &seq_rawdata_abi_fops);
	if (FUNC1(dent))
		goto fail;
	rawdata->dents[AAFS_LOADDATA_ABI] = dent;

	dent = FUNC5("revision", S_IFREG | 0444, dir, rawdata,
				      &seq_rawdata_revision_fops);
	if (FUNC1(dent))
		goto fail;
	rawdata->dents[AAFS_LOADDATA_REVISION] = dent;

	if (aa_g_hash_policy) {
		dent = FUNC5("sha1", S_IFREG | 0444, dir,
					      rawdata, &seq_rawdata_hash_fops);
		if (FUNC1(dent))
			goto fail;
		rawdata->dents[AAFS_LOADDATA_HASH] = dent;
	}

	dent = FUNC5("raw_data", S_IFREG | 0444,
				      dir, rawdata, &rawdata_fops);
	if (FUNC1(dent))
		goto fail;
	rawdata->dents[AAFS_LOADDATA_DATA] = dent;
	FUNC6(dent)->i_size = rawdata->size;

	rawdata->ns = FUNC3(ns);
	FUNC8(&rawdata->list, &ns->rawdata_list);
	/* no refcount on inode rawdata */

	return 0;

fail:
	FUNC11(rawdata);

	return FUNC2(dent);
}