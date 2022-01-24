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
struct inode {int dummy; } ;
struct gfs2_inode {int /*<<< orphan*/  i_eattr; } ;
struct gfs2_ea_location {int /*<<< orphan*/  el_bh; int /*<<< orphan*/  el_ea; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODATA ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ GFS2_EA_MAX_NAME_LEN ; 
 struct gfs2_inode* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct gfs2_inode*,int,char const*,struct gfs2_ea_location*) ; 
 int FUNC4 (struct gfs2_inode*,struct gfs2_ea_location*,void*,size_t) ; 
 scalar_t__ FUNC5 (char const*) ; 

__attribute__((used)) static int FUNC6(struct inode *inode, const char *name,
			    void *buffer, size_t size, int type)
{
	struct gfs2_inode *ip = FUNC1(inode);
	struct gfs2_ea_location el;
	int error;

	if (!ip->i_eattr)
		return -ENODATA;
	if (FUNC5(name) > GFS2_EA_MAX_NAME_LEN)
		return -EINVAL;

	error = FUNC3(ip, type, name, &el);
	if (error)
		return error;
	if (!el.el_ea)
		return -ENODATA;
	if (size)
		error = FUNC4(ip, &el, buffer, size);
	else
		error = FUNC0(el.el_ea);
	FUNC2(el.el_bh);

	return error;
}