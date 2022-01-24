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
typedef  int /*<<< orphan*/  uint32_t ;
struct jffs2_unknown_node {int dummy; } ;
struct jffs2_sb_info {int dummy; } ;
struct jffs2_raw_dirent {int nsize; void* name_crc; void* node_crc; int /*<<< orphan*/  type; void* mctime; void* ino; void* version; void* pino; void* hdr_crc; void* totlen; void* nodetype; void* magic; } ;
struct jffs2_inode_info {scalar_t__ highest_version; int /*<<< orphan*/  dents; TYPE_1__* inocache; } ;
struct jffs2_full_dirent {scalar_t__ ino; struct jffs2_raw_dirent* name; int /*<<< orphan*/  type; } ;
struct jffs2_eraseblock {int dummy; } ;
typedef  int /*<<< orphan*/  rd ;
struct TYPE_2__ {scalar_t__ ino; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOC_GC ; 
 scalar_t__ FUNC0 (struct jffs2_full_dirent*) ; 
 scalar_t__ FUNC1 (struct jffs2_inode_info*) ; 
 scalar_t__ FUNC2 (struct jffs2_inode_info*) ; 
 int /*<<< orphan*/  JFFS2_MAGIC_BITMASK ; 
 int /*<<< orphan*/  JFFS2_NODETYPE_DIRENT ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct jffs2_full_dirent*) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,struct jffs2_raw_dirent*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct jffs2_sb_info*,struct jffs2_full_dirent*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct jffs2_sb_info*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct jffs2_full_dirent* FUNC10 (struct jffs2_sb_info*,struct jffs2_inode_info*,struct jffs2_raw_dirent*,struct jffs2_raw_dirent*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,...) ; 
 int FUNC12 (struct jffs2_raw_dirent*) ; 

__attribute__((used)) static int FUNC13(struct jffs2_sb_info *c, struct jffs2_eraseblock *jeb,
					struct jffs2_inode_info *f, struct jffs2_full_dirent *fd)
{
	struct jffs2_full_dirent *new_fd;
	struct jffs2_raw_dirent rd;
	uint32_t alloclen;
	int ret;

	rd.magic = FUNC5(JFFS2_MAGIC_BITMASK);
	rd.nodetype = FUNC5(JFFS2_NODETYPE_DIRENT);
	rd.nsize = FUNC12(fd->name);
	rd.totlen = FUNC6(sizeof(rd) + rd.nsize);
	rd.hdr_crc = FUNC6(FUNC7(0, &rd, sizeof(struct jffs2_unknown_node)-4));

	rd.pino = FUNC6(f->inocache->ino);
	rd.version = FUNC6(++f->highest_version);
	rd.ino = FUNC6(fd->ino);
	/* If the times on this inode were set by explicit utime() they can be different,
	   so refrain from splatting them. */
	if (FUNC2(f) == FUNC1(f))
		rd.mctime = FUNC6(FUNC2(f));
	else
		rd.mctime = FUNC6(0);
	rd.type = fd->type;
	rd.node_crc = FUNC6(FUNC7(0, &rd, sizeof(rd)-8));
	rd.name_crc = FUNC6(FUNC7(0, fd->name, rd.nsize));

	ret = FUNC9(c, sizeof(rd)+rd.nsize, &alloclen,
				FUNC3(rd.nsize));
	if (ret) {
		FUNC11("jffs2_reserve_space_gc of %zd bytes for garbage_collect_dirent failed: %d\n",
			sizeof(rd)+rd.nsize, ret);
		return ret;
	}
	new_fd = FUNC10(c, f, &rd, fd->name, rd.nsize, ALLOC_GC);

	if (FUNC0(new_fd)) {
		FUNC11("jffs2_write_dirent in garbage_collect_dirent failed: %ld\n",
			FUNC4(new_fd));
		return FUNC4(new_fd);
	}
	FUNC8(c, new_fd, &f->dents);
	return 0;
}