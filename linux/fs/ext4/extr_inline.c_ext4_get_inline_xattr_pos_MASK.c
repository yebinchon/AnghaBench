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
struct ext4_xattr_ibody_header {int dummy; } ;
struct ext4_xattr_entry {int /*<<< orphan*/  e_value_offs; } ;
struct ext4_iloc {int dummy; } ;
struct TYPE_2__ {int i_inline_off; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct ext4_xattr_ibody_header*) ; 
 struct ext4_xattr_ibody_header* FUNC3 (struct inode*,scalar_t__) ; 
 scalar_t__ FUNC4 (struct ext4_iloc*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC6(struct inode *inode,
				       struct ext4_iloc *iloc)
{
	struct ext4_xattr_entry *entry;
	struct ext4_xattr_ibody_header *header;

	FUNC0(!FUNC1(inode)->i_inline_off);

	header = FUNC3(inode, FUNC4(iloc));
	entry = (struct ext4_xattr_entry *)((void *)FUNC4(iloc) +
					    FUNC1(inode)->i_inline_off);

	return (void *)FUNC2(header) + FUNC5(entry->e_value_offs);
}