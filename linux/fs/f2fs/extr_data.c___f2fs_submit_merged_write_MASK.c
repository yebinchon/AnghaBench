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
struct f2fs_sb_info {struct f2fs_bio_info** write_io; } ;
struct TYPE_2__ {int type; int op_flags; int /*<<< orphan*/  op; } ;
struct f2fs_bio_info {int /*<<< orphan*/  io_rwsem; TYPE_1__ fio; } ;
typedef  enum temp_type { ____Placeholder_temp_type } temp_type ;
typedef  enum page_type { ____Placeholder_page_type } page_type ;

/* Variables and functions */
 int META_FLUSH ; 
 int /*<<< orphan*/  NOBARRIER ; 
 int FUNC0 (int) ; 
 int REQ_FUA ; 
 int REQ_META ; 
 int /*<<< orphan*/  REQ_OP_WRITE ; 
 int REQ_PREFLUSH ; 
 int REQ_PRIO ; 
 int REQ_SYNC ; 
 int /*<<< orphan*/  FUNC1 (struct f2fs_bio_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct f2fs_sb_info *sbi,
				enum page_type type, enum temp_type temp)
{
	enum page_type btype = FUNC0(type);
	struct f2fs_bio_info *io = sbi->write_io[btype] + temp;

	FUNC2(&io->io_rwsem);

	/* change META to META_FLUSH in the checkpoint procedure */
	if (type >= META_FLUSH) {
		io->fio.type = META_FLUSH;
		io->fio.op = REQ_OP_WRITE;
		io->fio.op_flags = REQ_META | REQ_PRIO | REQ_SYNC;
		if (!FUNC3(sbi, NOBARRIER))
			io->fio.op_flags |= REQ_PREFLUSH | REQ_FUA;
	}
	FUNC1(io);
	FUNC4(&io->io_rwsem);
}