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
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct inode*,unsigned long) ; 
 unsigned long FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct inode*,unsigned long,unsigned long,unsigned long*,struct buffer_head**) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct inode *cpfile,
					      __u64 start_cno, __u64 end_cno,
					      __u64 *cnop,
					      struct buffer_head **bhp)
{
	unsigned long start, end, blkoff;
	int ret;

	if (FUNC3(start_cno > end_cno))
		return -ENOENT;

	start = FUNC1(cpfile, start_cno);
	end = FUNC1(cpfile, end_cno);

	ret = FUNC2(cpfile, start, end, &blkoff, bhp);
	if (!ret)
		*cnop = (blkoff == start) ? start_cno :
			FUNC0(cpfile, blkoff);
	return ret;
}