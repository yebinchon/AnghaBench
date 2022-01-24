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
struct page {int dummy; } ;
struct file {int dummy; } ;
struct address_space {int /*<<< orphan*/  host; } ;
typedef  unsigned int loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  mmu_private; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct file*,struct address_space*,unsigned int,unsigned int,unsigned int,struct page**,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fat_get_block ; 
 int /*<<< orphan*/  FUNC2 (struct address_space*,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct file *file, struct address_space *mapping,
			loff_t pos, unsigned len, unsigned flags,
			struct page **pagep, void **fsdata)
{
	int err;

	*pagep = NULL;
	err = FUNC1(file, mapping, pos, len, flags,
				pagep, fsdata, fat_get_block,
				&FUNC0(mapping->host)->mmu_private);
	if (err < 0)
		FUNC2(mapping, pos + len);
	return err;
}