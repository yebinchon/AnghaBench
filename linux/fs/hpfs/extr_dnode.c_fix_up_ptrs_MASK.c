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
struct super_block {int dummy; } ;
struct quad_buffer_head {int dummy; } ;
struct hpfs_dirent {scalar_t__ down; } ;
struct dnode {scalar_t__ root_dnode; int /*<<< orphan*/  up; int /*<<< orphan*/  self; } ;
typedef  scalar_t__ dnode_secno ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct hpfs_dirent*) ; 
 struct hpfs_dirent* FUNC2 (struct hpfs_dirent*) ; 
 struct hpfs_dirent* FUNC3 (struct dnode*) ; 
 struct hpfs_dirent* FUNC4 (struct dnode*) ; 
 int /*<<< orphan*/  FUNC5 (struct quad_buffer_head*) ; 
 struct dnode* FUNC6 (struct super_block*,int /*<<< orphan*/ ,struct quad_buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct quad_buffer_head*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct super_block *s, struct dnode *d)
{
	struct hpfs_dirent *de;
	struct hpfs_dirent *de_end = FUNC3(d);
	dnode_secno dno = FUNC8(d->self);
	for (de = FUNC4(d); de < de_end; de = FUNC2(de))
		if (de->down) {
			struct quad_buffer_head qbh;
			struct dnode *dd;
			if ((dd = FUNC6(s, FUNC1(de), &qbh))) {
				if (FUNC8(dd->up) != dno || dd->root_dnode) {
					dd->up = FUNC0(dno);
					dd->root_dnode = 0;
					FUNC7(&qbh);
				}
				FUNC5(&qbh);
			}
		}
}