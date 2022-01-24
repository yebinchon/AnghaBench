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
struct super_block {int dummy; } ;
struct net {int dummy; } ;
struct cache_detail {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct super_block*,struct cache_detail*) ; 
 struct super_block* FUNC1 (struct net*) ; 
 int /*<<< orphan*/  FUNC2 (struct net*) ; 
 int /*<<< orphan*/  FUNC3 (struct cache_detail*) ; 
 int /*<<< orphan*/  FUNC4 (struct cache_detail*) ; 

int FUNC5(struct net *net, struct cache_detail *cd)
{
	struct super_block *pipefs_sb;
	int ret = 0;

	FUNC4(cd);
	pipefs_sb = FUNC1(net);
	if (pipefs_sb) {
		ret = FUNC0(pipefs_sb, cd);
		FUNC2(net);
		if (ret)
			FUNC3(cd);
	}
	return ret;
}