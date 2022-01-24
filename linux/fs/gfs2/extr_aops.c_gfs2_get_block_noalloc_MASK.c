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
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int FUNC1 (struct inode*,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct inode *inode, sector_t lblock,
				  struct buffer_head *bh_result, int create)
{
	int error;

	error = FUNC1(inode, lblock, bh_result, 0);
	if (error)
		return error;
	if (!FUNC0(bh_result))
		return -EIO;
	return 0;
}