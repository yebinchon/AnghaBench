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
struct pnfs_block_extent {int be_f_offset; int be_length; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int SECTOR_SHIFT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static __be32 *FUNC1(struct pnfs_block_extent *be, __be32 *p)
{
	p = FUNC0(p, be->be_f_offset << SECTOR_SHIFT);
	return FUNC0(p, be->be_length << SECTOR_SHIFT);
}