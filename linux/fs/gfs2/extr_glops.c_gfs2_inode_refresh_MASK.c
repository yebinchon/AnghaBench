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
struct gfs2_inode {int /*<<< orphan*/  i_flags; } ;
struct buffer_head {int /*<<< orphan*/  b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIF_INVALID ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct gfs2_inode*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct gfs2_inode*,struct buffer_head**) ; 

int FUNC4(struct gfs2_inode *ip)
{
	struct buffer_head *dibh;
	int error;

	error = FUNC3(ip, &dibh);
	if (error)
		return error;

	error = FUNC2(ip, dibh->b_data);
	FUNC0(dibh);
	FUNC1(GIF_INVALID, &ip->i_flags);

	return error;
}