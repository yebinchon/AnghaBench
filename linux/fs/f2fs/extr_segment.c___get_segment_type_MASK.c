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
struct f2fs_io_info {int /*<<< orphan*/  temp; int /*<<< orphan*/  sbi; } ;
struct TYPE_2__ {int active_logs; } ;

/* Variables and functions */
 int /*<<< orphan*/  COLD ; 
 TYPE_1__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HOT ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  WARM ; 
 int FUNC3 (struct f2fs_io_info*) ; 
 int FUNC4 (struct f2fs_io_info*) ; 
 int FUNC5 (struct f2fs_io_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct f2fs_io_info *fio)
{
	int type = 0;

	switch (FUNC0(fio->sbi).active_logs) {
	case 2:
		type = FUNC3(fio);
		break;
	case 4:
		type = FUNC4(fio);
		break;
	case 6:
		type = FUNC5(fio);
		break;
	default:
		FUNC6(fio->sbi, true);
	}

	if (FUNC1(type))
		fio->temp = HOT;
	else if (FUNC2(type))
		fio->temp = WARM;
	else
		fio->temp = COLD;
	return type;
}