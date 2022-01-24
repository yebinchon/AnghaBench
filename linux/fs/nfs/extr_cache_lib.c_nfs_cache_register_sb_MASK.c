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
struct dentry {int dummy; } ;
struct cache_detail {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 struct dentry* FUNC1 (struct super_block*,char*) ; 
 int FUNC2 (struct dentry*,int /*<<< orphan*/ ,int,struct cache_detail*) ; 

int FUNC3(struct super_block *sb, struct cache_detail *cd)
{
	int ret;
	struct dentry *dir;

	dir = FUNC1(sb, "cache");
	ret = FUNC2(dir, cd->name, 0600, cd);
	FUNC0(dir);
	return ret;
}