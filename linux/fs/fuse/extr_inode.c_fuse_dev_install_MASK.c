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
struct fuse_dev {int /*<<< orphan*/  entry; int /*<<< orphan*/  fc; } ;
struct fuse_conn {int /*<<< orphan*/  lock; int /*<<< orphan*/  devices; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fuse_conn*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct fuse_dev *fud, struct fuse_conn *fc)
{
	fud->fc = FUNC0(fc);
	FUNC2(&fc->lock);
	FUNC1(&fud->entry, &fc->devices);
	FUNC3(&fc->lock);
}