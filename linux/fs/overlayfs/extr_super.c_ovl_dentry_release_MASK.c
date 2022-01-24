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
struct ovl_entry {int dummy; } ;
struct dentry {struct ovl_entry* d_fsdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ovl_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ovl_entry*) ; 
 int /*<<< orphan*/  rcu ; 

__attribute__((used)) static void FUNC2(struct dentry *dentry)
{
	struct ovl_entry *oe = dentry->d_fsdata;

	if (oe) {
		FUNC1(oe);
		FUNC0(oe, rcu);
	}
}