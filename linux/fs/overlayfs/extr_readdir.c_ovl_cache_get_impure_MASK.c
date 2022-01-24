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
struct path {struct dentry* dentry; } ;
struct ovl_dir_cache {scalar_t__ version; int /*<<< orphan*/  entries; int /*<<< orphan*/  root; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct ovl_dir_cache* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  OVL_IMPURE ; 
 int /*<<< orphan*/  OVL_XATTR_IMPURE ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct ovl_dir_cache*) ; 
 struct ovl_dir_cache* FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct dentry*) ; 
 scalar_t__ FUNC8 (struct dentry*) ; 
 struct ovl_dir_cache* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (struct path*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct ovl_dir_cache*) ; 
 int /*<<< orphan*/  FUNC15 (struct dentry*) ; 

__attribute__((used)) static struct ovl_dir_cache *FUNC16(struct path *path)
{
	int res;
	struct dentry *dentry = path->dentry;
	struct ovl_dir_cache *cache;

	cache = FUNC9(FUNC1(dentry));
	if (cache && FUNC8(dentry) == cache->version)
		return cache;

	/* Impure cache is not refcounted, free it here */
	FUNC10(FUNC1(dentry));
	FUNC14(FUNC1(dentry), NULL);

	cache = FUNC3(sizeof(struct ovl_dir_cache), GFP_KERNEL);
	if (!cache)
		return FUNC0(-ENOMEM);

	res = FUNC11(path, &cache->entries, &cache->root);
	if (res) {
		FUNC5(&cache->entries);
		FUNC2(cache);
		return FUNC0(res);
	}
	if (FUNC4(&cache->entries)) {
		/*
		 * A good opportunity to get rid of an unneeded "impure" flag.
		 * Removing the "impure" xattr is best effort.
		 */
		if (!FUNC15(dentry)) {
			FUNC12(FUNC7(dentry),
					   OVL_XATTR_IMPURE);
			FUNC13(dentry);
		}
		FUNC6(OVL_IMPURE, FUNC1(dentry));
		FUNC2(cache);
		return NULL;
	}

	cache->version = FUNC8(dentry);
	FUNC14(FUNC1(dentry), cache);

	return cache;
}