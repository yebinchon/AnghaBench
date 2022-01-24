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
struct gfs2_ea_location {struct gfs2_ea_header* el_prev; struct gfs2_ea_header* el_ea; struct buffer_head* el_bh; } ;
struct gfs2_ea_header {scalar_t__ ea_type; scalar_t__ ea_name_len; } ;
struct ea_find {scalar_t__ type; scalar_t__ namel; struct gfs2_ea_location* ef_el; int /*<<< orphan*/  name; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gfs2_ea_header*) ; 
 scalar_t__ GFS2_EATYPE_UNUSED ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct gfs2_inode *ip, struct buffer_head *bh,
		     struct gfs2_ea_header *ea, struct gfs2_ea_header *prev,
		     void *private)
{
	struct ea_find *ef = private;

	if (ea->ea_type == GFS2_EATYPE_UNUSED)
		return 0;

	if (ea->ea_type == ef->type) {
		if (ea->ea_name_len == ef->namel &&
		    !FUNC2(FUNC0(ea), ef->name, ea->ea_name_len)) {
			struct gfs2_ea_location *el = ef->ef_el;
			FUNC1(bh);
			el->el_bh = bh;
			el->el_ea = ea;
			el->el_prev = prev;
			return 1;
		}
	}

	return 0;
}