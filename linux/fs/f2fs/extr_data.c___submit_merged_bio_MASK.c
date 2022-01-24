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
struct f2fs_io_info {int /*<<< orphan*/  type; int /*<<< orphan*/  op; int /*<<< orphan*/  op_flags; } ;
struct f2fs_bio_info {int /*<<< orphan*/ * bio; TYPE_1__* sbi; struct f2fs_io_info fio; } ;
struct TYPE_2__ {int /*<<< orphan*/  sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct f2fs_bio_info *io)
{
	struct f2fs_io_info *fio = &io->fio;

	if (!io->bio)
		return;

	FUNC1(io->bio, fio->op, fio->op_flags);

	if (FUNC2(fio->op))
		FUNC3(io->sbi->sb, fio->type, io->bio);
	else
		FUNC4(io->sbi->sb, fio->type, io->bio);

	FUNC0(io->sbi, io->bio, fio->type);
	io->bio = NULL;
}