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
typedef  int /*<<< orphan*/  __u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int FUNC3 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer_head**) ; 

int FUNC4(struct inode *sufile, __u64 segnum)
{
	struct buffer_head *bh;
	int ret;

	ret = FUNC3(sufile, segnum, 0, &bh);
	if (!ret) {
		FUNC1(bh);
		FUNC2(sufile);
		FUNC0(bh);
	}
	return ret;
}