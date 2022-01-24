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
typedef  int /*<<< orphan*/  u32 ;
struct udf_bitmap {int s_nr_groups; } ;
struct super_block {int dummy; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_SIZE ; 
 struct udf_bitmap* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct super_block*,int /*<<< orphan*/ ) ; 
 struct udf_bitmap* FUNC2 (int) ; 

__attribute__((used)) static struct udf_bitmap *FUNC3(struct super_block *sb, u32 index)
{
	struct udf_bitmap *bitmap;
	int nr_groups;
	int size;

	nr_groups = FUNC1(sb, index);
	size = sizeof(struct udf_bitmap) +
		(sizeof(struct buffer_head *) * nr_groups);

	if (size <= PAGE_SIZE)
		bitmap = FUNC0(size, GFP_KERNEL);
	else
		bitmap = FUNC2(size); /* TODO: get rid of vzalloc */

	if (!bitmap)
		return NULL;

	bitmap->s_nr_groups = nr_groups;
	return bitmap;
}