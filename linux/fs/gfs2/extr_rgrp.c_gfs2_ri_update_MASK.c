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
struct gfs2_sbd {int sd_rindex_uptodate; } ;
struct gfs2_inode {int /*<<< orphan*/  i_inode; } ;

/* Variables and functions */
 struct gfs2_sbd* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_sbd*) ; 

__attribute__((used)) static int FUNC3(struct gfs2_inode *ip)
{
	struct gfs2_sbd *sdp = FUNC0(&ip->i_inode);
	int error;

	do {
		error = FUNC1(ip);
	} while (error == 0);

	if (error < 0)
		return error;

	FUNC2(sdp);

	sdp->sd_rindex_uptodate = 1;
	return 0;
}