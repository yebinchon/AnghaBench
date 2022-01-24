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
struct hpfs_sb_info {int sb_max_fwd_alloc; } ;
typedef  int secno ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct quad_buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,char*,int) ; 
 int /*<<< orphan*/ * FUNC4 (struct super_block*,int,struct quad_buffer_head*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct quad_buffer_head*) ; 
 struct hpfs_sb_info* FUNC6 (struct super_block*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(struct super_block *s, secno sec, unsigned n)
{
	struct quad_buffer_head qbh;
	__le32 *bmp;
	struct hpfs_sb_info *sbi = FUNC6(s);
	/*pr_info("2 - ");*/
	if (!n) return;
	if (sec < 0x12) {
		FUNC3(s, "Trying to free reserved sector %08x", sec);
		return;
	}
	sbi->sb_max_fwd_alloc += n > 0xffff ? 0xffff : n;
	if (sbi->sb_max_fwd_alloc > 0xffffff) sbi->sb_max_fwd_alloc = 0xffffff;
	new_map:
	if (!(bmp = FUNC4(s, sec >> 14, &qbh, "free"))) {
		return;
	}	
	new_tst:
	if ((FUNC7(bmp[(sec & 0x3fff) >> 5]) >> (sec & 0x1f) & 1)) {
		FUNC3(s, "sector %08x not allocated", sec);
		FUNC1(&qbh);
		return;
	}
	bmp[(sec & 0x3fff) >> 5] |= FUNC0(1 << (sec & 0x1f));
	FUNC2(s, sec);
	if (!--n) {
		FUNC5(&qbh);
		FUNC1(&qbh);
		return;
	}	
	if (!(++sec & 0x3fff)) {
		FUNC5(&qbh);
		FUNC1(&qbh);
		goto new_map;
	}
	goto new_tst;
}