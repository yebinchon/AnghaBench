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
struct iov_iter {int dummy; } ;
struct TYPE_2__ {struct iov_iter* iter; } ;
struct iomap_dio {int flags; size_t size; TYPE_1__ submit; } ;
struct iomap {scalar_t__ inline_data; } ;
struct inode {scalar_t__ i_size; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int IOMAP_DIO_WRITE ; 
 scalar_t__ PAGE_SIZE ; 
 size_t FUNC1 (scalar_t__,scalar_t__,struct iov_iter*) ; 
 size_t FUNC2 (scalar_t__,scalar_t__,struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 

__attribute__((used)) static loff_t
FUNC7(struct inode *inode, loff_t pos, loff_t length,
		struct iomap_dio *dio, struct iomap *iomap)
{
	struct iov_iter *iter = dio->submit.iter;
	size_t copied;

	FUNC0(pos + length > PAGE_SIZE - FUNC6(iomap->inline_data));

	if (dio->flags & IOMAP_DIO_WRITE) {
		loff_t size = inode->i_size;

		if (pos > size)
			FUNC5(iomap->inline_data + size, 0, pos - size);
		copied = FUNC1(iomap->inline_data + pos, length, iter);
		if (copied) {
			if (pos + copied > size)
				FUNC3(inode, pos + copied);
			FUNC4(inode);
		}
	} else {
		copied = FUNC2(iomap->inline_data + pos, length, iter);
	}
	dio->size += copied;
	return copied;
}