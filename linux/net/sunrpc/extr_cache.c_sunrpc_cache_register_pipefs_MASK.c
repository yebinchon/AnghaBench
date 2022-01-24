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
typedef  int /*<<< orphan*/  umode_t ;
struct dentry {int dummy; } ;
struct cache_detail {struct dentry* pipefs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 int FUNC1 (struct dentry*) ; 
 struct dentry* FUNC2 (struct dentry*,char const*,int /*<<< orphan*/ ,struct cache_detail*) ; 

int FUNC3(struct dentry *parent,
				 const char *name, umode_t umode,
				 struct cache_detail *cd)
{
	struct dentry *dir = FUNC2(parent, name, umode, cd);
	if (FUNC0(dir))
		return FUNC1(dir);
	cd->pipefs = dir;
	return 0;
}