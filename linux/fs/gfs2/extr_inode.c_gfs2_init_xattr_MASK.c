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
struct gfs2_sbd {int /*<<< orphan*/  sd_jbsize; } ;
struct gfs2_meta_header {int dummy; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; int /*<<< orphan*/  i_eattr; int /*<<< orphan*/  i_inode; } ;
struct gfs2_ea_header {int /*<<< orphan*/  ea_flags; int /*<<< orphan*/  ea_type; int /*<<< orphan*/  ea_rec_len; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFS2_EAFLAG_LAST ; 
 int /*<<< orphan*/  GFS2_EATYPE_UNUSED ; 
 struct gfs2_ea_header* FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  GFS2_FORMAT_EA ; 
 int /*<<< orphan*/  GFS2_METATYPE_EA ; 
 struct gfs2_sbd* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*,int) ; 
 struct buffer_head* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct buffer_head*) ; 

__attribute__((used)) static void FUNC8(struct gfs2_inode *ip)
{
	struct gfs2_sbd *sdp = FUNC1(&ip->i_inode);
	struct buffer_head *bh;
	struct gfs2_ea_header *ea;

	bh = FUNC5(ip->i_gl, ip->i_eattr);
	FUNC7(ip->i_gl, bh);
	FUNC6(bh, GFS2_METATYPE_EA, GFS2_FORMAT_EA);
	FUNC4(bh, sizeof(struct gfs2_meta_header));

	ea = FUNC0(bh);
	ea->ea_rec_len = FUNC3(sdp->sd_jbsize);
	ea->ea_type = GFS2_EATYPE_UNUSED;
	ea->ea_flags = GFS2_EAFLAG_LAST;

	FUNC2(bh);
}