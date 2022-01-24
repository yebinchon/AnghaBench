#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct quad_buffer_head {scalar_t__ data; } ;
struct hpfs_dirent {int /*<<< orphan*/  down; } ;
struct dnode {int /*<<< orphan*/  up; } ;
typedef  scalar_t__ dnode_secno ;
struct TYPE_2__ {scalar_t__ sb_chk; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct hpfs_dirent*) ; 
 int /*<<< orphan*/  FUNC1 (struct quad_buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,char*,scalar_t__,scalar_t__,scalar_t__) ; 
 TYPE_1__* FUNC3 (struct super_block*) ; 
 scalar_t__ FUNC4 (struct super_block*,scalar_t__,int*,int*,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 struct hpfs_dirent* FUNC6 (struct super_block*,scalar_t__,int,struct quad_buffer_head*,int /*<<< orphan*/ *) ; 

dnode_secno FUNC7(struct super_block *s, dnode_secno dno)
{
	struct quad_buffer_head qbh;
	dnode_secno d = dno;
	dnode_secno up = 0;
	struct hpfs_dirent *de;
	int c1, c2 = 0;

	again:
	if (FUNC3(s)->sb_chk)
		if (FUNC4(s, d, &c1, &c2, "hpfs_de_as_down_as_possible"))
			return d;
	if (!(de = FUNC6(s, d, 1, &qbh, NULL))) return dno;
	if (FUNC3(s)->sb_chk)
		if (up && FUNC5(((struct dnode *)qbh.data)->up) != up)
			FUNC2(s, "hpfs_de_as_down_as_possible: bad up pointer; dnode %08x, down %08x points to %08x", up, d, FUNC5(((struct dnode *)qbh.data)->up));
	if (!de->down) {
		FUNC1(&qbh);
		return d;
	}
	up = d;
	d = FUNC0(de);
	FUNC1(&qbh);
	goto again;
}