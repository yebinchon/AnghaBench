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
struct vxfs_fsh {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 struct vxfs_fsh* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vxfs_fsh*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 struct buffer_head* FUNC4 (struct inode*,int) ; 

__attribute__((used)) static struct vxfs_fsh *
FUNC5(struct inode *ip, int which)
{
	struct buffer_head		*bp;

	bp = FUNC4(ip, which);
	if (bp) {
		struct vxfs_fsh		*fhp;

		if (!(fhp = FUNC1(sizeof(*fhp), GFP_KERNEL)))
			goto out;
		FUNC2(fhp, bp->b_data, sizeof(*fhp));

		FUNC3(bp);
		return (fhp);
	}
out:
	FUNC0(bp);
	return NULL;
}