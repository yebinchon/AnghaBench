#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct iomap {int flags; int /*<<< orphan*/  type; } ;
struct inode {int dummy; } ;
struct gfs2_sbd {struct inode* sd_rindex; } ;
struct gfs2_inode {TYPE_2__* i_gl; TYPE_1__* i_qadata; } ;
typedef  int ssize_t ;
typedef  int loff_t ;
struct TYPE_4__ {int /*<<< orphan*/  gl_flags; } ;
struct TYPE_3__ {scalar_t__ qa_qd_num; } ;

/* Variables and functions */
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 struct gfs2_sbd* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  GLF_DIRTY ; 
 unsigned int IOMAP_DIRECT ; 
 int IOMAP_F_NEW ; 
 int IOMAP_F_SIZE_CHANGED ; 
 int /*<<< orphan*/  IOMAP_HOLE ; 
#define  IOMAP_WRITE 129 
#define  IOMAP_ZERO 128 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_inode*) ; 
 scalar_t__ FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct gfs2_inode*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,int,int) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static int FUNC15(struct inode *inode, loff_t pos, loff_t length,
			  ssize_t written, unsigned flags, struct iomap *iomap)
{
	struct gfs2_inode *ip = FUNC0(inode);
	struct gfs2_sbd *sdp = FUNC1(inode);

	switch (flags & (IOMAP_WRITE | IOMAP_ZERO)) {
	case IOMAP_WRITE:
		if (flags & IOMAP_DIRECT)
			return 0;
		break;
	case IOMAP_ZERO:
		 if (iomap->type == IOMAP_HOLE)
			 return 0;
		 break;
	default:
		 return 0;
	}

	if (!FUNC5(ip))
		FUNC6(ip);

	if (inode == sdp->sd_rindex)
		FUNC2(inode);

	FUNC3(ip);

	if (length != written && (iomap->flags & IOMAP_F_NEW)) {
		/* Deallocate blocks that were just allocated. */
		loff_t blockmask = FUNC9(inode) - 1;
		loff_t end = (pos + length) & ~blockmask;

		pos = (pos + written + blockmask) & ~blockmask;
		if (pos < end) {
			FUNC13(inode, pos, end - 1);
			FUNC11(ip, pos, end - pos);
		}
	}

	if (ip->i_qadata && ip->i_qadata->qa_qd_num)
		FUNC7(ip);

	if (FUNC14(!written))
		goto out_unlock;

	if (iomap->flags & IOMAP_F_SIZE_CHANGED)
		FUNC10(inode);
	FUNC12(GLF_DIRTY, &ip->i_gl->gl_flags);

out_unlock:
	if (FUNC4(flags))
		FUNC8(inode);
	return 0;
}