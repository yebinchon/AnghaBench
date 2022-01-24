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
struct iomap {int /*<<< orphan*/  dax_dev; int /*<<< orphan*/  bdev; } ;
typedef  int /*<<< orphan*/  sector_t ;
typedef  int /*<<< orphan*/  pgoff_t ;
typedef  int /*<<< orphan*/  pfn_t ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int EINVAL ; 
 size_t FUNC0 (long) ; 
 int FUNC1 (size_t) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const,size_t,int /*<<< orphan*/ *) ; 
 long FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct iomap*,int /*<<< orphan*/ ) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct iomap *iomap, loff_t pos, size_t size,
			 pfn_t *pfnp)
{
	const sector_t sector = FUNC4(iomap, pos);
	pgoff_t pgoff;
	int id, rc;
	long length;

	rc = FUNC2(iomap->bdev, sector, size, &pgoff);
	if (rc)
		return rc;
	id = FUNC5();
	length = FUNC3(iomap->dax_dev, pgoff, FUNC1(size),
				   NULL, pfnp);
	if (length < 0) {
		rc = length;
		goto out;
	}
	rc = -EINVAL;
	if (FUNC0(length) < size)
		goto out;
	if (FUNC8(*pfnp) & (FUNC1(size)-1))
		goto out;
	/* For larger pages we need devmap */
	if (length > 1 && !FUNC7(*pfnp))
		goto out;
	rc = 0;
out:
	FUNC6(id);
	return rc;
}