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
struct gfs2_inode {int /*<<< orphan*/  i_eattr; } ;
struct gfs2_ea_request {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_blocknr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int FUNC2 (struct gfs2_inode*,struct buffer_head**) ; 
 int FUNC3 (struct gfs2_inode*,int /*<<< orphan*/ ,struct gfs2_ea_request*) ; 

__attribute__((used)) static int FUNC4(struct gfs2_inode *ip, struct gfs2_ea_request *er,
		     void *private)
{
	struct buffer_head *bh;
	int error;

	error = FUNC2(ip, &bh);
	if (error)
		return error;

	ip->i_eattr = bh->b_blocknr;
	error = FUNC3(ip, FUNC0(bh), er);

	FUNC1(bh);

	return error;
}