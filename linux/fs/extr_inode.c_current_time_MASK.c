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
struct timespec64 {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct timespec64*) ; 
 struct timespec64 FUNC2 (struct timespec64,struct inode*) ; 
 scalar_t__ FUNC3 (int) ; 

struct timespec64 FUNC4(struct inode *inode)
{
	struct timespec64 now;

	FUNC1(&now);

	if (FUNC3(!inode->i_sb)) {
		FUNC0(1, "current_time() called with uninitialized super_block in the inode");
		return now;
	}

	return FUNC2(now, inode);
}