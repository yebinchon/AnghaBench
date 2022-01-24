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
struct TYPE_2__ {int i_mode; int /*<<< orphan*/  i_size; int /*<<< orphan*/  i_rdev; } ;
struct gfs2_inode {TYPE_1__ i_inode; int /*<<< orphan*/  i_gl; int /*<<< orphan*/  i_no_addr; } ;
struct gfs2_dinode {int /*<<< orphan*/  di_reserved; int /*<<< orphan*/  __pad4; scalar_t__ __pad3; scalar_t__ __pad2; scalar_t__ __pad1; void* di_minor; void* di_major; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  S_IFDIR 129 
#define  S_IFLNK 128 
 int S_IFMT ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_inode*,struct gfs2_dinode*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*,struct gfs2_inode*) ; 
 struct buffer_head* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*) ; 

__attribute__((used)) static void FUNC12(struct gfs2_inode *dip, struct gfs2_inode *ip,
			const char *symname)
{
	struct gfs2_dinode *di;
	struct buffer_head *dibh;

	dibh = FUNC7(ip->i_gl, ip->i_no_addr);
	FUNC8(ip->i_gl, dibh);
	di = (struct gfs2_dinode *)dibh->b_data;
	FUNC5(ip, di);

	di->di_major = FUNC3(FUNC0(ip->i_inode.i_rdev));
	di->di_minor = FUNC3(FUNC1(ip->i_inode.i_rdev));
	di->__pad1 = 0;
	di->__pad2 = 0;
	di->__pad3 = 0;
	FUNC10(&di->__pad4, 0, sizeof(di->__pad4));
	FUNC10(&di->di_reserved, 0, sizeof(di->di_reserved));
	FUNC4(dibh, sizeof(struct gfs2_dinode));

	switch(ip->i_inode.i_mode & S_IFMT) {
	case S_IFDIR:
		FUNC6(dibh, dip);
		break;
	case S_IFLNK:
		FUNC9(dibh->b_data + sizeof(struct gfs2_dinode), symname, ip->i_inode.i_size);
		break;
	}

	FUNC11(dibh);
	FUNC2(dibh);
}