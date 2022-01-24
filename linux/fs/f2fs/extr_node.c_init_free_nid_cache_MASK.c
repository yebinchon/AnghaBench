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
struct f2fs_sb_info {int dummy; } ;
struct f2fs_nm_info {int nat_blocks; void* free_nid_count; void* nat_block_bitmap; void** free_nid_bitmap; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NAT_ENTRY_PER_BLOCK ; 
 struct f2fs_nm_info* FUNC0 (struct f2fs_sb_info*) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct f2fs_sb_info*,int,int /*<<< orphan*/ ) ; 
 void** FUNC4 (struct f2fs_sb_info*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct f2fs_sb_info *sbi)
{
	struct f2fs_nm_info *nm_i = FUNC0(sbi);
	int i;

	nm_i->free_nid_bitmap =
		FUNC4(sbi, FUNC1(sizeof(unsigned char *),
					     nm_i->nat_blocks),
			     GFP_KERNEL);
	if (!nm_i->free_nid_bitmap)
		return -ENOMEM;

	for (i = 0; i < nm_i->nat_blocks; i++) {
		nm_i->free_nid_bitmap[i] = FUNC3(sbi,
			FUNC2(NAT_ENTRY_PER_BLOCK), GFP_KERNEL);
		if (!nm_i->free_nid_bitmap[i])
			return -ENOMEM;
	}

	nm_i->nat_block_bitmap = FUNC3(sbi, nm_i->nat_blocks / 8,
								GFP_KERNEL);
	if (!nm_i->nat_block_bitmap)
		return -ENOMEM;

	nm_i->free_nid_count =
		FUNC3(sbi, FUNC1(sizeof(unsigned short),
					      nm_i->nat_blocks),
			      GFP_KERNEL);
	if (!nm_i->free_nid_count)
		return -ENOMEM;
	return 0;
}