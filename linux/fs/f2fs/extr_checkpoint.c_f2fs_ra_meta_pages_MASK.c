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
struct page {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_io_info {int op_flags; int in_list; int is_por; int new_blkaddr; struct page* page; int /*<<< orphan*/ * encrypted_page; int /*<<< orphan*/  op; int /*<<< orphan*/  type; struct f2fs_sb_info* sbi; } ;
struct blk_plug {int dummy; } ;
typedef  int block_t ;
struct TYPE_2__ {int /*<<< orphan*/  max_nid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  META ; 
#define  META_CP 132 
 int /*<<< orphan*/  FUNC1 (struct f2fs_sb_info*) ; 
#define  META_NAT 131 
#define  META_POR 130 
#define  META_SIT 129 
#define  META_SSA 128 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int NAT_ENTRY_PER_BLOCK ; 
 TYPE_1__* FUNC3 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 int REQ_META ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 int REQ_PRIO ; 
 int REQ_RAHEAD ; 
 int SIT_ENTRY_PER_BLOCK ; 
 int /*<<< orphan*/  FUNC5 (struct blk_plug*) ; 
 int /*<<< orphan*/  FUNC6 (struct blk_plug*) ; 
 int FUNC7 (struct f2fs_sb_info*,int) ; 
 int FUNC8 (struct f2fs_sb_info*,int) ; 
 struct page* FUNC9 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct f2fs_sb_info*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct f2fs_io_info*) ; 
 scalar_t__ FUNC13 (int) ; 

int FUNC14(struct f2fs_sb_info *sbi, block_t start, int nrpages,
							int type, bool sync)
{
	struct page *page;
	block_t blkno = start;
	struct f2fs_io_info fio = {
		.sbi = sbi,
		.type = META,
		.op = REQ_OP_READ,
		.op_flags = sync ? (REQ_META | REQ_PRIO) : REQ_RAHEAD,
		.encrypted_page = NULL,
		.in_list = false,
		.is_por = (type == META_POR),
	};
	struct blk_plug plug;

	if (FUNC13(type == META_POR))
		fio.op_flags &= ~REQ_META;

	FUNC6(&plug);
	for (; nrpages-- > 0; blkno++) {

		if (!FUNC10(sbi, blkno, type))
			goto out;

		switch (type) {
		case META_NAT:
			if (FUNC13(blkno >=
					FUNC2(FUNC3(sbi)->max_nid)))
				blkno = 0;
			/* get nat block addr */
			fio.new_blkaddr = FUNC7(sbi,
					blkno * NAT_ENTRY_PER_BLOCK);
			break;
		case META_SIT:
			/* get sit block addr */
			fio.new_blkaddr = FUNC8(sbi,
					blkno * SIT_ENTRY_PER_BLOCK);
			break;
		case META_SSA:
		case META_CP:
		case META_POR:
			fio.new_blkaddr = blkno;
			break;
		default:
			FUNC0();
		}

		page = FUNC9(FUNC1(sbi),
						fio.new_blkaddr, false);
		if (!page)
			continue;
		if (FUNC4(page)) {
			FUNC11(page, 1);
			continue;
		}

		fio.page = page;
		FUNC12(&fio);
		FUNC11(page, 0);
	}
out:
	FUNC5(&plug);
	return blkno - start;
}