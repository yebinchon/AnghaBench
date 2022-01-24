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
struct iomap_page {int /*<<< orphan*/  write_count; } ;
struct inode {int /*<<< orphan*/  i_mapping; } ;
struct bio_vec {int /*<<< orphan*/  bv_page; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EIO ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct iomap_page* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(
	struct inode		*inode,
	struct bio_vec	*bvec,
	int			error)
{
	struct iomap_page	*iop = FUNC7(bvec->bv_page);

	if (error) {
		FUNC1(bvec->bv_page);
		FUNC6(inode->i_mapping, -EIO);
	}

	FUNC0(iop || FUNC5(inode) == PAGE_SIZE);
	FUNC0(!iop || FUNC3(&iop->write_count) > 0);

	if (!iop || FUNC2(&iop->write_count))
		FUNC4(bvec->bv_page);
}