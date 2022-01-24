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
struct gfs2_inode {int dummy; } ;
struct gfs2_ea_location {int /*<<< orphan*/  el_bh; int /*<<< orphan*/  el_ea; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  GFS2_EATYPE_SYS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct gfs2_inode*,int /*<<< orphan*/ ,char const*,struct gfs2_ea_location*) ; 
 int FUNC3 (struct gfs2_inode*,struct gfs2_ea_location*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int,int /*<<< orphan*/ ) ; 

int FUNC6(struct gfs2_inode *ip, const char *name, char **ppdata)
{
	struct gfs2_ea_location el;
	int error;
	int len;
	char *data;

	error = FUNC2(ip, GFS2_EATYPE_SYS, name, &el);
	if (error)
		return error;
	if (!el.el_ea)
		goto out;
	if (!FUNC0(el.el_ea))
		goto out;

	len = FUNC0(el.el_ea);
	data = FUNC5(len, GFP_NOFS);
	error = -ENOMEM;
	if (data == NULL)
		goto out;

	error = FUNC3(ip, &el, data, len);
	if (error < 0)
		FUNC4(data);
	else
		*ppdata = data;
out:
	FUNC1(el.el_bh);
	return error;
}