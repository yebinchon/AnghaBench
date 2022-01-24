#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_blocknr; scalar_t__ b_data; scalar_t__ b_size; } ;
struct TYPE_2__ {scalar_t__ h_magic; scalar_t__ h_blocks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 TYPE_1__* FUNC1 (struct buffer_head*) ; 
 int EFSBADCRC ; 
 int EFSCORRUPTED ; 
 int EXT4_XATTR_MAGIC ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,char const*,unsigned int,int /*<<< orphan*/ ,char*,unsigned long long) ; 
 scalar_t__ FUNC3 (struct buffer_head*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,struct buffer_head*) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 

__attribute__((used)) static inline int
FUNC8(struct inode *inode, struct buffer_head *bh,
			 const char *function, unsigned int line)
{
	int error = -EFSCORRUPTED;

	if (FUNC1(bh)->h_magic != FUNC4(EXT4_XATTR_MAGIC) ||
	    FUNC1(bh)->h_blocks != FUNC4(1))
		goto errout;
	if (FUNC3(bh))
		return 0;

	error = -EFSBADCRC;
	if (!FUNC5(inode, bh))
		goto errout;
	error = FUNC6(FUNC0(bh), bh->b_data + bh->b_size,
					 bh->b_data);
errout:
	if (error)
		FUNC2(inode, function, line, 0,
				   "corrupted xattr block %llu",
				   (unsigned long long) bh->b_blocknr);
	else
		FUNC7(bh);
	return error;
}