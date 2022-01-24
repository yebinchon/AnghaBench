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
struct ovl_inode {int /*<<< orphan*/  lock; int /*<<< orphan*/  redirect; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 struct ovl_inode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ovl_inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ovl_inode_cachep ; 

__attribute__((used)) static void FUNC4(struct inode *inode)
{
	struct ovl_inode *oi = FUNC0(inode);

	FUNC1(oi->redirect);
	FUNC3(&oi->lock);
	FUNC2(ovl_inode_cachep, oi);
}