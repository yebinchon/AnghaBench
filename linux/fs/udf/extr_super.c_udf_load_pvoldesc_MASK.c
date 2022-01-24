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
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint16_t ;
struct timestamp {int /*<<< orphan*/  typeAndTimezone; int /*<<< orphan*/  minute; int /*<<< orphan*/  hour; int /*<<< orphan*/  day; int /*<<< orphan*/  month; int /*<<< orphan*/  year; } ;
struct super_block {int dummy; } ;
struct primaryVolDesc {int /*<<< orphan*/  volSetIdent; int /*<<< orphan*/  volIdent; struct timestamp recordingDateAndTime; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  sector_t ;
struct TYPE_2__ {scalar_t__* s_volume_ident; int /*<<< orphan*/  s_record_time; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ TAG_IDENT_PVD ; 
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 scalar_t__* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct timestamp) ; 
 int FUNC10 (struct super_block*,scalar_t__*,int,int /*<<< orphan*/ ,int) ; 
 struct buffer_head* FUNC11 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static int FUNC12(struct super_block *sb, sector_t block)
{
	struct primaryVolDesc *pvoldesc;
	uint8_t *outstr;
	struct buffer_head *bh;
	uint16_t ident;
	int ret = -ENOMEM;
	struct timestamp *ts;

	outstr = FUNC3(128, GFP_NOFS);
	if (!outstr)
		return -ENOMEM;

	bh = FUNC11(sb, block, block, &ident);
	if (!bh) {
		ret = -EAGAIN;
		goto out2;
	}

	if (ident != TAG_IDENT_PVD) {
		ret = -EIO;
		goto out_bh;
	}

	pvoldesc = (struct primaryVolDesc *)bh->b_data;

	FUNC9(&FUNC0(sb)->s_record_time,
			      pvoldesc->recordingDateAndTime);
	ts = &pvoldesc->recordingDateAndTime;
	FUNC8("recording time %04u/%02u/%02u %02u:%02u (%x)\n",
		  FUNC4(ts->year), ts->month, ts->day, ts->hour,
		  ts->minute, FUNC4(ts->typeAndTimezone));

	ret = FUNC10(sb, outstr, 31, pvoldesc->volIdent, 32);
	if (ret < 0) {
		FUNC6(FUNC0(sb)->s_volume_ident, "InvalidName");
		FUNC5("incorrect volume identification, setting to "
			"'InvalidName'\n");
	} else {
		FUNC7(FUNC0(sb)->s_volume_ident, outstr, ret);
	}
	FUNC8("volIdent[] = '%s'\n", FUNC0(sb)->s_volume_ident);

	ret = FUNC10(sb, outstr, 127, pvoldesc->volSetIdent, 128);
	if (ret < 0) {
		ret = 0;
		goto out_bh;
	}
	outstr[ret] = 0;
	FUNC8("volSetIdent[] = '%s'\n", outstr);

	ret = 0;
out_bh:
	FUNC1(bh);
out2:
	FUNC2(outstr);
	return ret;
}