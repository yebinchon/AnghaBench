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
struct iov_iter {int dummy; } ;
struct iomap {scalar_t__ type; int flags; struct dax_device* dax_dev; struct block_device* bdev; } ;
struct inode {int /*<<< orphan*/  i_mapping; } ;
struct dax_device {int dummy; } ;
struct block_device {int dummy; } ;
typedef  unsigned int ssize_t ;
typedef  int /*<<< orphan*/  sector_t ;
typedef  int /*<<< orphan*/  pgoff_t ;
typedef  int loff_t ;

/* Variables and functions */
 size_t FUNC0 (int,int) ; 
 unsigned int EFAULT ; 
 unsigned int EINTR ; 
 int EIO ; 
 int IOMAP_F_NEW ; 
 scalar_t__ IOMAP_HOLE ; 
 scalar_t__ IOMAP_MAPPED ; 
 scalar_t__ IOMAP_UNWRITTEN ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (size_t const) ; 
 scalar_t__ READ ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ WRITE ; 
 unsigned int FUNC4 (struct block_device*,int /*<<< orphan*/  const,size_t const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 size_t FUNC5 (struct dax_device*,int /*<<< orphan*/ ,void*,unsigned int,struct iov_iter*) ; 
 size_t FUNC6 (struct dax_device*,int /*<<< orphan*/ ,void*,unsigned int,struct iov_iter*) ; 
 unsigned int FUNC7 (struct dax_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct iomap*,int) ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC14 (struct iov_iter*) ; 
 int FUNC15 (int,struct iov_iter*) ; 
 int FUNC16 (int,int) ; 

__attribute__((used)) static loff_t
FUNC17(struct inode *inode, loff_t pos, loff_t length, void *data,
		struct iomap *iomap)
{
	struct block_device *bdev = iomap->bdev;
	struct dax_device *dax_dev = iomap->dax_dev;
	struct iov_iter *iter = data;
	loff_t end = pos + length, done = 0;
	ssize_t ret = 0;
	size_t xfer;
	int id;

	if (FUNC14(iter) == READ) {
		end = FUNC16(end, FUNC12(inode));
		if (pos >= end)
			return 0;

		if (iomap->type == IOMAP_HOLE || iomap->type == IOMAP_UNWRITTEN)
			return FUNC15(FUNC16(length, end - pos), iter);
	}

	if (FUNC3(iomap->type != IOMAP_MAPPED))
		return -EIO;

	/*
	 * Write can allocate block for an area which has a hole page mapped
	 * into page tables. We have to tear down these mappings so that data
	 * written by write(2) is visible in mmap.
	 */
	if (iomap->flags & IOMAP_F_NEW) {
		FUNC13(inode->i_mapping,
					      pos >> PAGE_SHIFT,
					      (end - 1) >> PAGE_SHIFT);
	}

	id = FUNC9();
	while (pos < end) {
		unsigned offset = pos & (PAGE_SIZE - 1);
		const size_t size = FUNC0(length + offset, PAGE_SIZE);
		const sector_t sector = FUNC8(iomap, pos);
		ssize_t map_len;
		pgoff_t pgoff;
		void *kaddr;

		if (FUNC11(current)) {
			ret = -EINTR;
			break;
		}

		ret = FUNC4(bdev, sector, size, &pgoff);
		if (ret)
			break;

		map_len = FUNC7(dax_dev, pgoff, FUNC2(size),
				&kaddr, NULL);
		if (map_len < 0) {
			ret = map_len;
			break;
		}

		map_len = FUNC1(map_len);
		kaddr += offset;
		map_len -= offset;
		if (map_len > end - pos)
			map_len = end - pos;

		/*
		 * The userspace address for the memory copy has already been
		 * validated via access_ok() in either vfs_read() or
		 * vfs_write(), depending on which operation we are doing.
		 */
		if (FUNC14(iter) == WRITE)
			xfer = FUNC5(dax_dev, pgoff, kaddr,
					map_len, iter);
		else
			xfer = FUNC6(dax_dev, pgoff, kaddr,
					map_len, iter);

		pos += xfer;
		length -= xfer;
		done += xfer;

		if (xfer == 0)
			ret = -EFAULT;
		if (xfer < map_len)
			break;
	}
	FUNC10(id);

	return done ? done : ret;
}