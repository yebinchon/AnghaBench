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
typedef  int /*<<< orphan*/  u64 ;
struct ovl_readdir_data {int err; int /*<<< orphan*/  middle; int /*<<< orphan*/  root; } ;
struct ovl_cache_entry {int /*<<< orphan*/  l_node; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct ovl_cache_entry* FUNC2 (int /*<<< orphan*/ ,char const*,int) ; 
 struct ovl_cache_entry* FUNC3 (struct ovl_readdir_data*,char const*,int,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct ovl_readdir_data *rdd,
			   const char *name, int namelen,
			   loff_t offset, u64 ino, unsigned int d_type)
{
	struct ovl_cache_entry *p;

	p = FUNC2(rdd->root, name, namelen);
	if (p) {
		FUNC1(&p->l_node, &rdd->middle);
	} else {
		p = FUNC3(rdd, name, namelen, ino, d_type);
		if (p == NULL)
			rdd->err = -ENOMEM;
		else
			FUNC0(&p->l_node, &rdd->middle);
	}

	return rdd->err;
}