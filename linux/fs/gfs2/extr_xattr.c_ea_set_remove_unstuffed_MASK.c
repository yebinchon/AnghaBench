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
struct gfs2_ea_location {scalar_t__ el_ea; scalar_t__ el_prev; int /*<<< orphan*/  el_bh; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct gfs2_inode*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct gfs2_inode *ip,
				   struct gfs2_ea_location *el)
{
	if (el->el_prev && FUNC0(el->el_prev) != el->el_ea) {
		el->el_prev = FUNC0(el->el_prev);
		FUNC3(FUNC1(&ip->i_inode),
				     FUNC0(el->el_prev) == el->el_ea);
	}

	return FUNC2(ip, el->el_bh, el->el_ea, el->el_prev, 0);
}