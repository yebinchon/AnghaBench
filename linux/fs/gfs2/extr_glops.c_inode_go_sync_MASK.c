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
struct TYPE_4__ {struct address_space* i_mapping; int /*<<< orphan*/  i_mode; } ;
struct gfs2_inode {TYPE_2__ i_inode; int /*<<< orphan*/  i_flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  ln_sbd; } ;
struct gfs2_glock {scalar_t__ gl_state; int /*<<< orphan*/  gl_flags; TYPE_1__ gl_name; } ;
struct address_space {int dummy; } ;

/* Variables and functions */
 int GFS2_LFC_INODE_GO_SYNC ; 
 int GFS2_LOG_HEAD_FLUSH_NORMAL ; 
 int /*<<< orphan*/  GIF_SW_PAGED ; 
 int /*<<< orphan*/  GLF_DIRTY ; 
 int /*<<< orphan*/  FUNC0 (struct gfs2_glock*,int) ; 
 scalar_t__ LM_ST_EXCLUSIVE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC4 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_glock*) ; 
 int /*<<< orphan*/  FUNC6 (struct gfs2_inode*) ; 
 struct address_space* FUNC7 (struct gfs2_glock*) ; 
 struct gfs2_inode* FUNC8 (struct gfs2_glock*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct gfs2_glock*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (struct address_space*,int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct address_space*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(struct gfs2_glock *gl)
{
	struct gfs2_inode *ip = FUNC8(gl);
	int isreg = ip && FUNC1(ip->i_inode.i_mode);
	struct address_space *metamapping = FUNC7(gl);
	int error;

	if (isreg) {
		if (FUNC13(GIF_SW_PAGED, &ip->i_flags))
			FUNC14(ip->i_inode.i_mapping, 0, 0);
		FUNC10(&ip->i_inode);
	}
	if (!FUNC13(GLF_DIRTY, &gl->gl_flags))
		goto out;

	FUNC0(gl, gl->gl_state != LM_ST_EXCLUSIVE);

	FUNC9(gl->gl_name.ln_sbd, gl, GFS2_LOG_HEAD_FLUSH_NORMAL |
		       GFS2_LFC_INODE_GO_SYNC);
	FUNC4(metamapping);
	if (isreg) {
		struct address_space *mapping = ip->i_inode.i_mapping;
		FUNC4(mapping);
		error = FUNC3(mapping);
		FUNC11(mapping, error);
	}
	error = FUNC3(metamapping);
	FUNC11(metamapping, error);
	FUNC5(gl);
	/*
	 * Writeback of the data mapping may cause the dirty flag to be set
	 * so we have to clear it again here.
	 */
	FUNC12();
	FUNC2(GLF_DIRTY, &gl->gl_flags);

out:
	FUNC6(ip);
}