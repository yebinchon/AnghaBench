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
typedef  int /*<<< orphan*/  u64 ;
struct squashfs_cache_entry {int error; } ;
struct page {TYPE_1__* mapping; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct squashfs_cache_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,struct squashfs_cache_entry*,int,int /*<<< orphan*/ ) ; 
 struct squashfs_cache_entry* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC4(struct page *page, u64 block, int bsize, int expected)
{
	struct inode *i = page->mapping->host;
	struct squashfs_cache_entry *buffer = FUNC3(i->i_sb,
		block, bsize);
	int res = buffer->error;

	if (res)
		FUNC0("Unable to read page, block %llx, size %x\n", block,
			bsize);
	else
		FUNC2(page, buffer, expected, 0);

	FUNC1(buffer);
	return res;
}