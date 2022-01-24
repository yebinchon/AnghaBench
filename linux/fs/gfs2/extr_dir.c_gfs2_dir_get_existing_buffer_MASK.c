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
typedef  int /*<<< orphan*/  u64 ;
struct gfs2_inode {int /*<<< orphan*/  i_inode; int /*<<< orphan*/  i_gl; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIO_WAIT ; 
 int EIO ; 
 int /*<<< orphan*/  GFS2_METATYPE_JD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer_head**) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct gfs2_inode *ip, u64 block,
					struct buffer_head **bhp)
{
	struct buffer_head *bh;
	int error;

	error = FUNC2(ip->i_gl, block, DIO_WAIT, 0, &bh);
	if (error)
		return error;
	if (FUNC3(FUNC0(&ip->i_inode), bh, GFS2_METATYPE_JD)) {
		FUNC1(bh);
		return -EIO;
	}
	*bhp = bh;
	return 0;
}