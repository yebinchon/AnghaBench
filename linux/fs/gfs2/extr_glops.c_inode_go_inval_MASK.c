#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {struct address_space* i_mapping; int /*<<< orphan*/  i_mode; } ;
struct gfs2_inode {TYPE_2__ i_inode; int /*<<< orphan*/  i_flags; } ;
struct TYPE_6__ {TYPE_3__* ln_sbd; } ;
struct gfs2_glock {TYPE_1__ gl_name; int /*<<< orphan*/  gl_ail_count; } ;
struct address_space {int dummy; } ;
struct TYPE_8__ {scalar_t__ sd_rindex_uptodate; int /*<<< orphan*/  sd_rindex; } ;

/* Variables and functions */
 int DIO_METADATA ; 
 struct gfs2_inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int GFS2_LFC_INODE_GO_INVAL ; 
 int GFS2_LOG_HEAD_FLUSH_NORMAL ; 
 int /*<<< orphan*/  GIF_INVALID ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct gfs2_inode*) ; 
 struct address_space* FUNC7 (struct gfs2_glock*) ; 
 struct gfs2_inode* FUNC8 (struct gfs2_glock*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct address_space*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct gfs2_glock *gl, int flags)
{
	struct gfs2_inode *ip = FUNC8(gl);

	FUNC4(gl->gl_name.ln_sbd, !FUNC2(&gl->gl_ail_count));

	if (flags & DIO_METADATA) {
		struct address_space *mapping = FUNC7(gl);
		FUNC12(mapping, 0);
		if (ip) {
			FUNC11(GIF_INVALID, &ip->i_flags);
			FUNC3(&ip->i_inode);
			FUNC10(&ip->i_inode);
			FUNC6(ip);
		}
	}

	if (ip == FUNC0(gl->gl_name.ln_sbd->sd_rindex)) {
		FUNC9(gl->gl_name.ln_sbd, NULL,
			       GFS2_LOG_HEAD_FLUSH_NORMAL |
			       GFS2_LFC_INODE_GO_INVAL);
		gl->gl_name.ln_sbd->sd_rindex_uptodate = 0;
	}
	if (ip && FUNC1(ip->i_inode.i_mode))
		FUNC12(ip->i_inode.i_mapping, 0);

	FUNC5(ip);
}