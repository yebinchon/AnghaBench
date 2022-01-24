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
struct inode {int dummy; } ;
struct gfs2_sbd {struct inode* sd_rindex; } ;
struct gfs2_rindex {int /*<<< orphan*/  ri_data; } ;
struct gfs2_inode {int dummy; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct gfs2_inode*,char*,scalar_t__*,int) ; 
 scalar_t__ FUNC3 (struct inode*) ; 

u64 FUNC4(struct gfs2_sbd *sdp)
{
	u64 total_data = 0;	
	struct inode *inode = sdp->sd_rindex;
	struct gfs2_inode *ip = FUNC0(inode);
	char buf[sizeof(struct gfs2_rindex)];
	int error, rgrps;

	for (rgrps = 0;; rgrps++) {
		loff_t pos = rgrps * sizeof(struct gfs2_rindex);

		if (pos + sizeof(struct gfs2_rindex) > FUNC3(inode))
			break;
		error = FUNC2(ip, buf, &pos,
					   sizeof(struct gfs2_rindex));
		if (error != sizeof(struct gfs2_rindex))
			break;
		total_data += FUNC1(((struct gfs2_rindex *)buf)->ri_data);
	}
	return total_data;
}