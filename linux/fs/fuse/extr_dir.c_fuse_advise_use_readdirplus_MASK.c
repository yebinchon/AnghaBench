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
struct inode {int dummy; } ;
struct fuse_inode {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUSE_I_ADVISE_RDPLUS ; 
 struct fuse_inode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct inode *dir)
{
	struct fuse_inode *fi = FUNC0(dir);

	FUNC1(FUSE_I_ADVISE_RDPLUS, &fi->state);
}