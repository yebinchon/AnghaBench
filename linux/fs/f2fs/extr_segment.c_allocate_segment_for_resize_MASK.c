#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct f2fs_sb_info {int dummy; } ;
struct curseg_info {unsigned int segno; int /*<<< orphan*/  curseg_mutex; } ;
struct TYPE_4__ {int /*<<< orphan*/  sentry_lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  curseg_lock; } ;

/* Variables and functions */
 struct curseg_info* FUNC0 (struct f2fs_sb_info*,int) ; 
 TYPE_2__* FUNC1 (struct f2fs_sb_info*) ; 
 TYPE_1__* FUNC2 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct f2fs_sb_info*,char*,int,unsigned int,unsigned int) ; 
 scalar_t__ FUNC8 (struct f2fs_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct f2fs_sb_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct f2fs_sb_info*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct f2fs_sb_info*,struct curseg_info*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

void FUNC16(struct f2fs_sb_info *sbi, int type,
					unsigned int start, unsigned int end)
{
	struct curseg_info *curseg = FUNC0(sbi, type);
	unsigned int segno;

	FUNC4(&FUNC2(sbi)->curseg_lock);
	FUNC10(&curseg->curseg_mutex);
	FUNC5(&FUNC1(sbi)->sentry_lock);

	segno = FUNC0(sbi, type)->segno;
	if (segno < start || segno > end)
		goto unlock;

	if (FUNC6(sbi) && FUNC8(sbi, type))
		FUNC3(sbi, type);
	else
		FUNC12(sbi, type, true);

	FUNC13(sbi, curseg);

	FUNC9(sbi, segno);
unlock:
	FUNC15(&FUNC1(sbi)->sentry_lock);

	if (segno != curseg->segno)
		FUNC7(sbi, "For resize: curseg of type %d: %u ==> %u",
			    type, segno, curseg->segno);

	FUNC11(&curseg->curseg_mutex);
	FUNC14(&FUNC2(sbi)->curseg_lock);
}