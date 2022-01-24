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
struct dax_device {int dummy; } ;
struct block_device {int dummy; } ;
typedef  scalar_t__ sector_t ;
typedef  int /*<<< orphan*/  pgoff_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 long FUNC0 (struct block_device*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct block_device*,scalar_t__,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC2 (struct dax_device*,int /*<<< orphan*/ ,int,void**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct dax_device*,void*,unsigned int) ; 
 scalar_t__ FUNC4 (struct block_device*,unsigned int,unsigned int) ; 
 long FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (long) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ,unsigned int) ; 

int FUNC8(struct block_device *bdev,
		struct dax_device *dax_dev, sector_t sector,
		unsigned int offset, unsigned int size)
{
	if (FUNC4(bdev, offset, size)) {
		sector_t start_sector = sector + (offset >> 9);

		return FUNC1(bdev, start_sector,
				size >> 9, GFP_NOFS, 0);
	} else {
		pgoff_t pgoff;
		long rc, id;
		void *kaddr;

		rc = FUNC0(bdev, sector, PAGE_SIZE, &pgoff);
		if (rc)
			return rc;

		id = FUNC5();
		rc = FUNC2(dax_dev, pgoff, 1, &kaddr, NULL);
		if (rc < 0) {
			FUNC6(id);
			return rc;
		}
		FUNC7(kaddr + offset, 0, size);
		FUNC3(dax_dev, kaddr + offset, size);
		FUNC6(id);
	}
	return 0;
}