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
typedef  int /*<<< orphan*/  u64 ;
struct inode {int dummy; } ;
struct buffer_head {int /*<<< orphan*/ * b_data; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 struct buffer_head* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 struct buffer_head* FUNC3 (struct inode*,char const*,int,int*) ; 
 struct buffer_head* FUNC4 (struct inode*,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct buffer_head *FUNC5(struct inode *dir,
					   const char *name, int namelen)
{
	struct buffer_head *bh;
	int ofs;
	u64 block, dummy;

	bh = FUNC3(dir, name, namelen, &ofs);
	if (!bh)
		return FUNC0(-EIO);

	block = FUNC1(*((__be64 *) &bh->b_data[ofs]));
	FUNC2(bh);

	return FUNC4(dir, block, name, namelen, &dummy);
}