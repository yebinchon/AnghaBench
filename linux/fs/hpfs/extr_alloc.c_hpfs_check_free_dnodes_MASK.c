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
typedef  int u32 ;
struct super_block {int dummy; } ;
struct quad_buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_2__ {int sb_fs_size; int sb_c_bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct quad_buffer_head*) ; 
 int /*<<< orphan*/ * FUNC1 (struct super_block*,int,struct quad_buffer_head*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (struct super_block*,struct quad_buffer_head*) ; 
 TYPE_1__* FUNC3 (struct super_block*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct super_block *s, int n)
{
	int n_bmps = (FUNC3(s)->sb_fs_size + 0x4000 - 1) >> 14;
	int b = FUNC3(s)->sb_c_bitmap & 0x0fffffff;
	int i, j;
	__le32 *bmp;
	struct quad_buffer_head qbh;
	if ((bmp = FUNC2(s, &qbh))) {
		for (j = 0; j < 512; j++) {
			unsigned k;
			if (!FUNC4(bmp[j])) continue;
			for (k = FUNC4(bmp[j]); k; k >>= 1) if (k & 1) if (!--n) {
				FUNC0(&qbh);
				return 0;
			}
		}
	}
	FUNC0(&qbh);
	i = 0;
	if (FUNC3(s)->sb_c_bitmap != -1) {
		bmp = FUNC1(s, b, &qbh, "chkdn1");
		goto chk_bmp;
	}
	chk_next:
	if (i == b) i++;
	if (i >= n_bmps) return 1;
	bmp = FUNC1(s, i, &qbh, "chkdn2");
	chk_bmp:
	if (bmp) {
		for (j = 0; j < 512; j++) {
			u32 k;
			if (!FUNC4(bmp[j])) continue;
			for (k = 0xf; k; k <<= 4)
				if ((FUNC4(bmp[j]) & k) == k) {
					if (!--n) {
						FUNC0(&qbh);
						return 0;
					}
				}
		}
		FUNC0(&qbh);
	}
	i++;
	goto chk_next;
}