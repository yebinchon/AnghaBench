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
struct iomap_dio {int flags; } ;
struct iomap {int type; } ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int IOMAP_DIO_WRITE ; 
#define  IOMAP_HOLE 131 
#define  IOMAP_INLINE 130 
#define  IOMAP_MAPPED 129 
#define  IOMAP_UNWRITTEN 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iomap_dio*,struct iomap*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct iomap_dio*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iomap_dio*,struct iomap*) ; 

__attribute__((used)) static loff_t
FUNC4(struct inode *inode, loff_t pos, loff_t length,
		void *data, struct iomap *iomap)
{
	struct iomap_dio *dio = data;

	switch (iomap->type) {
	case IOMAP_HOLE:
		if (FUNC0(dio->flags & IOMAP_DIO_WRITE))
			return -EIO;
		return FUNC2(length, dio);
	case IOMAP_UNWRITTEN:
		if (!(dio->flags & IOMAP_DIO_WRITE))
			return FUNC2(length, dio);
		return FUNC1(inode, pos, length, dio, iomap);
	case IOMAP_MAPPED:
		return FUNC1(inode, pos, length, dio, iomap);
	case IOMAP_INLINE:
		return FUNC3(inode, pos, length, dio, iomap);
	default:
		FUNC0(1);
		return -EIO;
	}
}