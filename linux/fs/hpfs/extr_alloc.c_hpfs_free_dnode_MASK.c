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
struct quad_buffer_head {int dummy; } ;
typedef  int dnode_secno ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_2__ {int sb_dirband_start; int sb_dirband_size; scalar_t__ sb_chk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct quad_buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,int,int) ; 
 int /*<<< orphan*/ * FUNC5 (struct super_block*,struct quad_buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct quad_buffer_head*) ; 
 TYPE_1__* FUNC7 (struct super_block*) ; 

void FUNC8(struct super_block *s, dnode_secno dno)
{
	if (FUNC7(s)->sb_chk) if (dno & 3) {
		FUNC3(s, "hpfs_free_dnode: dnode %08x not aligned", dno);
		return;
	}
	if (dno < FUNC7(s)->sb_dirband_start ||
	    dno >= FUNC7(s)->sb_dirband_start + FUNC7(s)->sb_dirband_size) {
		FUNC4(s, dno, 4);
	} else {
		struct quad_buffer_head qbh;
		__le32 *bmp;
		unsigned ssec = (dno - FUNC7(s)->sb_dirband_start) / 4;
		if (!(bmp = FUNC5(s, &qbh))) {
			return;
		}
		bmp[ssec >> 5] |= FUNC0(1 << (ssec & 0x1f));
		FUNC6(&qbh);
		FUNC1(&qbh);
		FUNC2(s, dno);
	}
}