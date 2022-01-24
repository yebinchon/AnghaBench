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
struct ovl_dir_file {struct ovl_dir_cache* cache; } ;
struct ovl_dir_cache {scalar_t__ refcount; int /*<<< orphan*/  entries; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct ovl_dir_cache*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct ovl_dir_cache* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct ovl_dir_file *od, struct dentry *dentry)
{
	struct ovl_dir_cache *cache = od->cache;

	FUNC0(cache->refcount <= 0);
	cache->refcount--;
	if (!cache->refcount) {
		if (FUNC4(FUNC1(dentry)) == cache)
			FUNC5(FUNC1(dentry), NULL);

		FUNC3(&cache->entries);
		FUNC2(cache);
	}
}