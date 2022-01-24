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
struct the_nilfs {int ns_flushed_device; int /*<<< orphan*/  ns_bdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BARRIER ; 
 int EIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct the_nilfs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static inline int FUNC3(struct the_nilfs *nilfs)
{
	int err;

	if (!FUNC1(nilfs, BARRIER) || nilfs->ns_flushed_device)
		return 0;

	nilfs->ns_flushed_device = 1;
	/*
	 * the store to ns_flushed_device must not be reordered after
	 * blkdev_issue_flush().
	 */
	FUNC2();

	err = FUNC0(nilfs->ns_bdev, GFP_KERNEL, NULL);
	if (err != -EIO)
		err = 0;
	return err;
}