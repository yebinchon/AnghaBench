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
struct gfs2_inode {int /*<<< orphan*/  i_inode; } ;
struct gfs2_ea_header {int /*<<< orphan*/  ea_type; } ;
struct buffer_head {char* b_data; int b_size; } ;
typedef  int (* ea_call_t ) (struct gfs2_inode*,struct buffer_head*,struct gfs2_ea_header*,struct gfs2_ea_header*,void*) ;

/* Variables and functions */
 int EIO ; 
 struct gfs2_ea_header* FUNC0 (struct gfs2_ea_header*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct gfs2_ea_header* FUNC2 (struct buffer_head*) ; 
 scalar_t__ FUNC3 (struct gfs2_ea_header*) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_ea_header*) ; 
 int /*<<< orphan*/  GFS2_METATYPE_EA ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct gfs2_inode*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct gfs2_inode *ip, struct buffer_head *bh,
			ea_call_t ea_call, void *data)
{
	struct gfs2_ea_header *ea, *prev = NULL;
	int error = 0;

	if (FUNC7(FUNC5(&ip->i_inode), bh, GFS2_METATYPE_EA))
		return -EIO;

	for (ea = FUNC2(bh);; prev = ea, ea = FUNC0(ea)) {
		if (!FUNC4(ea))
			goto fail;
		if (!(bh->b_data <= (char *)ea && (char *)FUNC0(ea) <=
						  bh->b_data + bh->b_size))
			goto fail;
		if (!FUNC1(ea->ea_type))
			goto fail;

		error = ea_call(ip, bh, ea, prev, data);
		if (error)
			return error;

		if (FUNC3(ea)) {
			if ((char *)FUNC0(ea) !=
			    bh->b_data + bh->b_size)
				goto fail;
			break;
		}
	}

	return error;

fail:
	FUNC6(ip);
	return -EIO;
}