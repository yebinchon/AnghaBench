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
struct ovl_dir_cache {scalar_t__ version; int refcount; int /*<<< orphan*/  entries; int /*<<< orphan*/  root; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct ovl_dir_cache* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RB_ROOT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct ovl_dir_cache*) ; 
 struct ovl_dir_cache* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct dentry*) ; 
 struct ovl_dir_cache* FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct dentry*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct ovl_dir_cache*) ; 

__attribute__((used)) static struct ovl_dir_cache *FUNC11(struct dentry *dentry)
{
	int res;
	struct ovl_dir_cache *cache;

	cache = FUNC8(FUNC3(dentry));
	if (cache && FUNC7(dentry) == cache->version) {
		FUNC2(!cache->refcount);
		cache->refcount++;
		return cache;
	}
	FUNC10(FUNC3(dentry), NULL);

	cache = FUNC5(sizeof(struct ovl_dir_cache), GFP_KERNEL);
	if (!cache)
		return FUNC0(-ENOMEM);

	cache->refcount = 1;
	FUNC1(&cache->entries);
	cache->root = RB_ROOT;

	res = FUNC9(dentry, &cache->entries, &cache->root);
	if (res) {
		FUNC6(&cache->entries);
		FUNC4(cache);
		return FUNC0(res);
	}

	cache->version = FUNC7(dentry);
	FUNC10(FUNC3(dentry), cache);

	return cache;
}