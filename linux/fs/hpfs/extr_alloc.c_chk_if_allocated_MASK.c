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
typedef  int secno ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_2__ {int sb_dirband_start; int sb_dirband_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct quad_buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*,char*,char*,int) ; 
 int /*<<< orphan*/ * FUNC2 (struct super_block*,int,struct quad_buffer_head*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (struct super_block*,struct quad_buffer_head*) ; 
 TYPE_1__* FUNC4 (struct super_block*) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct super_block *s, secno sec, char *msg)
{
	struct quad_buffer_head qbh;
	__le32 *bmp;
	if (!(bmp = FUNC2(s, sec >> 14, &qbh, "chk"))) goto fail;
	if ((FUNC5(bmp[(sec & 0x3fff) >> 5]) >> (sec & 0x1f)) & 1) {
		FUNC1(s, "sector '%s' - %08x not allocated in bitmap", msg, sec);
		goto fail1;
	}
	FUNC0(&qbh);
	if (sec >= FUNC4(s)->sb_dirband_start && sec < FUNC4(s)->sb_dirband_start + FUNC4(s)->sb_dirband_size) {
		unsigned ssec = (sec - FUNC4(s)->sb_dirband_start) / 4;
		if (!(bmp = FUNC3(s, &qbh))) goto fail;
		if ((FUNC5(bmp[ssec >> 5]) >> (ssec & 0x1f)) & 1) {
			FUNC1(s, "sector '%s' - %08x not allocated in directory bitmap", msg, sec);
			goto fail1;
		}
		FUNC0(&qbh);
	}
	return 0;
	fail1:
	FUNC0(&qbh);
	fail:
	return 1;
}