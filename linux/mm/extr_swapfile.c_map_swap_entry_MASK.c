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
typedef  int /*<<< orphan*/  swp_entry_t ;
struct swap_info_struct {struct block_device* bdev; } ;
struct swap_extent {scalar_t__ start_page; scalar_t__ start_block; } ;
struct block_device {int dummy; } ;
typedef  scalar_t__ sector_t ;
typedef  scalar_t__ pgoff_t ;

/* Variables and functions */
 struct swap_extent* FUNC0 (struct swap_info_struct*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct swap_info_struct* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static sector_t FUNC3(swp_entry_t entry, struct block_device **bdev)
{
	struct swap_info_struct *sis;
	struct swap_extent *se;
	pgoff_t offset;

	sis = FUNC2(entry);
	*bdev = sis->bdev;

	offset = FUNC1(entry);
	se = FUNC0(sis, offset);
	return se->start_block + (offset - se->start_page);
}