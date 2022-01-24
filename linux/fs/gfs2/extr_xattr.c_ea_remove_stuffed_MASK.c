#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_4__ {int /*<<< orphan*/  i_ctime; } ;
struct gfs2_inode {TYPE_1__ i_inode; int /*<<< orphan*/  i_gl; } ;
struct gfs2_ea_location {int /*<<< orphan*/  el_bh; struct gfs2_ea_header* el_prev; struct gfs2_ea_header* el_ea; } ;
struct gfs2_ea_header {int /*<<< orphan*/  ea_type; int /*<<< orphan*/  ea_flags; int /*<<< orphan*/  ea_rec_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFS2_EAFLAG_LAST ; 
 int /*<<< orphan*/  GFS2_EATYPE_UNUSED ; 
 scalar_t__ FUNC0 (struct gfs2_ea_header*) ; 
 scalar_t__ FUNC1 (struct gfs2_ea_header*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  I_DIRTY_DATASYNC ; 
 scalar_t__ RES_DINODE ; 
 scalar_t__ RES_EATTR ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct gfs2_inode *ip, struct gfs2_ea_location *el)
{
	struct gfs2_ea_header *ea = el->el_ea;
	struct gfs2_ea_header *prev = el->el_prev;
	int error;

	error = FUNC7(FUNC2(&ip->i_inode), RES_DINODE + RES_EATTR, 0);
	if (error)
		return error;

	FUNC6(ip->i_gl, el->el_bh);

	if (prev) {
		u32 len;

		len = FUNC1(prev) + FUNC1(ea);
		prev->ea_rec_len = FUNC4(len);

		if (FUNC0(ea))
			prev->ea_flags |= GFS2_EAFLAG_LAST;
	} else {
		ea->ea_type = GFS2_EATYPE_UNUSED;
	}

	ip->i_inode.i_ctime = FUNC5(&ip->i_inode);
	FUNC3(&ip->i_inode, I_DIRTY_DATASYNC);

	FUNC8(FUNC2(&ip->i_inode));

	return error;
}