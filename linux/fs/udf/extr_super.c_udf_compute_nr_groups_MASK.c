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
typedef  size_t u32 ;
struct udf_part_map {scalar_t__ s_partition_len; } ;
struct super_block {int s_blocksize; } ;
struct spaceBitmapDesc {int dummy; } ;
struct TYPE_2__ {struct udf_part_map* s_partmaps; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int) ; 
 TYPE_1__* FUNC1 (struct super_block*) ; 

int FUNC2(struct super_block *sb, u32 partition)
{
	struct udf_part_map *map = &FUNC1(sb)->s_partmaps[partition];
	return FUNC0(map->s_partition_len +
			    (sizeof(struct spaceBitmapDesc) << 3),
			    sb->s_blocksize * 8);
}