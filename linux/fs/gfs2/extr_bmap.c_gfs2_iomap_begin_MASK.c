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
struct metapath {int mp_aheight; } ;
struct iomap {int /*<<< orphan*/  type; int /*<<< orphan*/  flags; } ;
struct inode {int dummy; } ;
struct gfs2_inode {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int ENOTBLK ; 
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 unsigned int IOMAP_DIRECT ; 
 int /*<<< orphan*/  IOMAP_F_BUFFER_HEAD ; 
 int /*<<< orphan*/  IOMAP_HOLE ; 
 int /*<<< orphan*/  IOMAP_MAPPED ; 
#define  IOMAP_WRITE 129 
#define  IOMAP_ZERO 128 
 int FUNC1 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,struct iomap*,struct metapath*) ; 
 int FUNC2 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,struct iomap*,struct metapath*) ; 
 scalar_t__ FUNC3 (unsigned int) ; 
 int FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct metapath*) ; 
 int /*<<< orphan*/  FUNC7 (struct gfs2_inode*,struct iomap*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct gfs2_inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC9(struct inode *inode, loff_t pos, loff_t length,
			    unsigned flags, struct iomap *iomap)
{
	struct gfs2_inode *ip = FUNC0(inode);
	struct metapath mp = { .mp_aheight = 1, };
	int ret;

	iomap->flags |= IOMAP_F_BUFFER_HEAD;

	FUNC8(ip, pos, length, flags);
	if (FUNC3(flags)) {
		ret = FUNC4(inode);
		if (ret)
			goto out;
	}

	ret = FUNC2(inode, pos, length, flags, iomap, &mp);
	if (ret)
		goto out_unlock;

	switch(flags & (IOMAP_WRITE | IOMAP_ZERO)) {
	case IOMAP_WRITE:
		if (flags & IOMAP_DIRECT) {
			/*
			 * Silently fall back to buffered I/O for stuffed files
			 * or if we've got a hole (see gfs2_file_direct_write).
			 */
			if (iomap->type != IOMAP_MAPPED)
				ret = -ENOTBLK;
			goto out_unlock;
		}
		break;
	case IOMAP_ZERO:
		if (iomap->type == IOMAP_HOLE)
			goto out_unlock;
		break;
	default:
		goto out_unlock;
	}

	ret = FUNC1(inode, pos, length, flags, iomap, &mp);

out_unlock:
	if (ret && FUNC3(flags))
		FUNC5(inode);
	FUNC6(&mp);
out:
	FUNC7(ip, iomap, ret);
	return ret;
}