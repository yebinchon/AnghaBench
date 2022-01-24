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
typedef  int u32 ;
struct super_block {int dummy; } ;
struct ocfs2_group_desc {int /*<<< orphan*/  bg_free_bits_count; int /*<<< orphan*/  bg_blkno; void* bg_bitmap; } ;

/* Variables and functions */
 int ERESTARTSYS ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (void*,int,int) ; 
 int FUNC5 (void*,int,int) ; 
 int FUNC6 (struct super_block*,struct ocfs2_group_desc*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long long,int,int,int) ; 

__attribute__((used)) static int FUNC8(struct super_block *sb,
			    struct ocfs2_group_desc *gd, u64 group,
			    u32 start, u32 max, u32 minbits)
{
	int ret = 0, count = 0, next;
	void *bitmap = gd->bg_bitmap;

	if (FUNC1(gd->bg_free_bits_count) < minbits)
		return 0;

	FUNC7((unsigned long long)FUNC2(gd->bg_blkno),
			       start, max, minbits);

	while (start < max) {
		start = FUNC5(bitmap, max, start);
		if (start >= max)
			break;
		next = FUNC4(bitmap, max, start);

		if ((next - start) >= minbits) {
			ret = FUNC6(sb, gd, group,
						start, next - start);
			if (ret < 0) {
				FUNC3(ret);
				break;
			}
			count += next - start;
		}
		start = next + 1;

		if (FUNC0(current)) {
			count = -ERESTARTSYS;
			break;
		}

		if ((FUNC1(gd->bg_free_bits_count) - count) < minbits)
			break;
	}

	if (ret < 0)
		count = ret;

	return count;
}