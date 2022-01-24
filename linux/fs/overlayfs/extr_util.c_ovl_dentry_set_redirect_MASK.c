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
struct ovl_inode {char const* redirect; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 struct ovl_inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

void FUNC3(struct dentry *dentry, const char *redirect)
{
	struct ovl_inode *oi = FUNC0(FUNC1(dentry));

	FUNC2(oi->redirect);
	oi->redirect = redirect;
}