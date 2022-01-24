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
struct ext4_extent_tail {scalar_t__ et_checksum; } ;
struct ext4_extent_header {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*,struct ext4_extent_header*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct ext4_extent_tail* FUNC2 (struct ext4_extent_header*) ; 

__attribute__((used)) static int FUNC3(struct inode *inode,
					 struct ext4_extent_header *eh)
{
	struct ext4_extent_tail *et;

	if (!FUNC1(inode->i_sb))
		return 1;

	et = FUNC2(eh);
	if (et->et_checksum != FUNC0(inode, eh))
		return 0;
	return 1;
}