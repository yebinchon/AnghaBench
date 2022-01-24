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
struct dio_submit {int blkbits; scalar_t__ boundary; int /*<<< orphan*/  pages_in_io; } ;
struct dio {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_bdev; } ;
typedef  int sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_MAX_PAGES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct dio*,struct dio_submit*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (struct dio*,struct dio_submit*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC4(struct dio *dio, struct dio_submit *sdio,
		sector_t start_sector, struct buffer_head *map_bh)
{
	sector_t sector;
	int ret, nr_pages;

	ret = FUNC2(dio, sdio);
	if (ret)
		goto out;
	sector = start_sector << (sdio->blkbits - 9);
	nr_pages = FUNC3(sdio->pages_in_io, BIO_MAX_PAGES);
	FUNC0(nr_pages <= 0);
	FUNC1(dio, sdio, map_bh->b_bdev, sector, nr_pages);
	sdio->boundary = 0;
out:
	return ret;
}