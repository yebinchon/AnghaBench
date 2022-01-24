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
struct super_block {int dummy; } ;
typedef  void squashfs_page_actor ;

/* Variables and functions */
 int ENOMEM ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int SQUASHFS_COMPRESSED_BIT_BLOCK ; 
 void** FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 void* FUNC4 (void**,int,int) ; 
 int FUNC5 (struct super_block*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,void*) ; 

void *FUNC6(struct super_block *sb, u64 block, int length)
{
	int pages = (length + PAGE_SIZE - 1) >> PAGE_SHIFT;
	int i, res;
	void *table, *buffer, **data;
	struct squashfs_page_actor *actor;

	table = buffer = FUNC3(length, GFP_KERNEL);
	if (table == NULL)
		return FUNC0(-ENOMEM);

	data = FUNC1(pages, sizeof(void *), GFP_KERNEL);
	if (data == NULL) {
		res = -ENOMEM;
		goto failed;
	}

	actor = FUNC4(data, pages, length);
	if (actor == NULL) {
		res = -ENOMEM;
		goto failed2;
	}

	for (i = 0; i < pages; i++, buffer += PAGE_SIZE)
		data[i] = buffer;

	res = FUNC5(sb, block, length |
		SQUASHFS_COMPRESSED_BIT_BLOCK, NULL, actor);

	FUNC2(data);
	FUNC2(actor);

	if (res < 0)
		goto failed;

	return table;

failed2:
	FUNC2(data);
failed:
	FUNC2(table);
	return FUNC0(res);
}