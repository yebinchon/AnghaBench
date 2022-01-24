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
typedef  int secno ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct quad_buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,int) ; 
 int /*<<< orphan*/ * FUNC3 (struct super_block*,int,struct quad_buffer_head*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct quad_buffer_head*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct super_block *s, secno sec)
{
	struct quad_buffer_head qbh;
	__le32 *bmp;
	if (!(bmp = FUNC3(s, sec >> 14, &qbh, "aip"))) goto end;
	if (FUNC5(bmp[(sec & 0x3fff) >> 5]) & (1 << (sec & 0x1f))) {
		bmp[(sec & 0x3fff) >> 5] &= FUNC0(~(1 << (sec & 0x1f)));
		FUNC4(&qbh);
		FUNC1(&qbh);
		FUNC2(s, sec);
		return 1;
	}
	FUNC1(&qbh);
	end:
	return 0;
}