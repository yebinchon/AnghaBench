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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct ext4_xattr_header {scalar_t__ h_checksum; } ;
struct buffer_head {int /*<<< orphan*/  b_blocknr; } ;

/* Variables and functions */
 struct ext4_xattr_header* FUNC0 (struct buffer_head*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct inode*,int /*<<< orphan*/ ,struct ext4_xattr_header*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC5(struct inode *inode,
					struct buffer_head *bh)
{
	struct ext4_xattr_header *hdr = FUNC0(bh);
	int ret = 1;

	if (FUNC1(inode->i_sb)) {
		FUNC3(bh);
		ret = (hdr->h_checksum == FUNC2(inode,
							bh->b_blocknr, hdr));
		FUNC4(bh);
	}
	return ret;
}