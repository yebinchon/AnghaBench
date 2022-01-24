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
typedef  int u64 ;
struct super_block {int s_blocksize_bits; } ;

/* Variables and functions */
 int FUNC0 (struct super_block*,int) ; 

__attribute__((used)) static inline u64 FUNC1(struct super_block *sb,
					      u64 bytes)
{
	u64 blocks;

        blocks = FUNC0(sb, bytes);
	return blocks << sb->s_blocksize_bits;
}