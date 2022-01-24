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
typedef  scalar_t__ uint ;
struct qtree_mem_dqinfo {int /*<<< orphan*/  dqi_sb; int /*<<< orphan*/  dqi_type; scalar_t__ dqi_free_entry; int /*<<< orphan*/  dqi_usable_bs; } ;
struct qt_disk_dqdbheader {int /*<<< orphan*/  dqdh_prev_free; int /*<<< orphan*/  dqdh_next_free; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int FUNC6 (struct qtree_mem_dqinfo*,scalar_t__,char*) ; 
 int FUNC7 (struct qtree_mem_dqinfo*,scalar_t__,char*) ; 

__attribute__((used)) static int FUNC8(struct qtree_mem_dqinfo *info, char *buf,
			       uint blk)
{
	char *tmpbuf = FUNC1(info->dqi_usable_bs);
	struct qt_disk_dqdbheader *dh = (struct qt_disk_dqdbheader *)buf;
	uint nextblk = FUNC3(dh->dqdh_next_free);
	uint prevblk = FUNC3(dh->dqdh_prev_free);
	int err;

	if (!tmpbuf)
		return -ENOMEM;
	if (nextblk) {
		err = FUNC6(info, nextblk, tmpbuf);
		if (err < 0)
			goto out_buf;
		((struct qt_disk_dqdbheader *)tmpbuf)->dqdh_prev_free =
							dh->dqdh_prev_free;
		err = FUNC7(info, nextblk, tmpbuf);
		if (err < 0)
			goto out_buf;
	}
	if (prevblk) {
		err = FUNC6(info, prevblk, tmpbuf);
		if (err < 0)
			goto out_buf;
		((struct qt_disk_dqdbheader *)tmpbuf)->dqdh_next_free =
							dh->dqdh_next_free;
		err = FUNC7(info, prevblk, tmpbuf);
		if (err < 0)
			goto out_buf;
	} else {
		info->dqi_free_entry = nextblk;
		FUNC4(info->dqi_sb, info->dqi_type);
	}
	FUNC2(tmpbuf);
	dh->dqdh_next_free = dh->dqdh_prev_free = FUNC0(0);
	/* No matter whether write succeeds block is out of list */
	if (FUNC7(info, blk, buf) < 0)
		FUNC5(info->dqi_sb, "Can't write block (%u) "
			    "with free entries", blk);
	return 0;
out_buf:
	FUNC2(tmpbuf);
	return err;
}