#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct squashfs_cache_entry {int error; } ;
struct page {TYPE_1__* mapping; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_4__ {int /*<<< orphan*/  fragment_offset; int /*<<< orphan*/  fragment_size; int /*<<< orphan*/  fragment_block; } ;
struct TYPE_3__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct squashfs_cache_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,struct squashfs_cache_entry*,int,int /*<<< orphan*/ ) ; 
 struct squashfs_cache_entry* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (struct inode*) ; 

__attribute__((used)) static int FUNC5(struct page *page, int expected)
{
	struct inode *inode = page->mapping->host;
	struct squashfs_cache_entry *buffer = FUNC3(inode->i_sb,
		FUNC4(inode)->fragment_block,
		FUNC4(inode)->fragment_size);
	int res = buffer->error;

	if (res)
		FUNC0("Unable to read page, block %llx, size %x\n",
			FUNC4(inode)->fragment_block,
			FUNC4(inode)->fragment_size);
	else
		FUNC2(page, buffer, expected,
			FUNC4(inode)->fragment_offset);

	FUNC1(buffer);
	return res;
}