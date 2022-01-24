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
struct ovl_dir_cache {int /*<<< orphan*/  entries; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ovl_dir_cache*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct ovl_dir_cache* FUNC2 (struct inode*) ; 

void FUNC3(struct inode *inode)
{
	struct ovl_dir_cache *cache = FUNC2(inode);

	if (cache) {
		FUNC1(&cache->entries);
		FUNC0(cache);
	}
}