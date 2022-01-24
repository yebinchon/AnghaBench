#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int umode_t ;
struct super_block {int /*<<< orphan*/  s_root; void* s_time_max; void* s_time_min; int /*<<< orphan*/ * s_d_op; int /*<<< orphan*/ * s_op; int /*<<< orphan*/  s_magic; int /*<<< orphan*/  s_flags; struct hpfs_sb_info* s_fs_info; } ;
struct quad_buffer_head {int dummy; } ;
struct TYPE_7__ {scalar_t__ tv_nsec; void* tv_sec; } ;
struct TYPE_6__ {scalar_t__ tv_nsec; void* tv_sec; } ;
struct TYPE_5__ {scalar_t__ tv_nsec; void* tv_sec; } ;
struct inode {int i_size; int i_blocks; int /*<<< orphan*/  i_ino; TYPE_3__ i_ctime; TYPE_2__ i_mtime; TYPE_1__ i_atime; } ;
struct hpfs_super_block {int funcversion; int /*<<< orphan*/  bitmaps; int /*<<< orphan*/  dir_band_bitmap; int /*<<< orphan*/  n_dir_band; int /*<<< orphan*/  dir_band_start; int /*<<< orphan*/  dir_band_end; int /*<<< orphan*/  n_sectors; int /*<<< orphan*/  root; scalar_t__ version; int /*<<< orphan*/  magic; } ;
struct hpfs_spare_block {int dirty; int /*<<< orphan*/  code_page_dir; int /*<<< orphan*/  n_code_pages; int /*<<< orphan*/  n_dnode_spares_free; int /*<<< orphan*/  n_dnode_spares; scalar_t__ old_wrote; scalar_t__ n_spares_used; int /*<<< orphan*/  magic; } ;
struct hpfs_sb_info {int sb_fs_size; int sb_root; int sb_bitmaps; int sb_dirband_start; int sb_dirband_size; int sb_dmap; int sb_mode; int sb_n_free; int sb_n_free_dnodes; int sb_lowercase; int sb_eas; int sb_chk; int sb_chkdsk; int sb_err; int sb_timeshift; int sb_c_bitmap; int sb_max_fwd_alloc; int /*<<< orphan*/ * sb_cp_table; int /*<<< orphan*/  sb_bmp_dir; scalar_t__ sb_was_error; int /*<<< orphan*/  sb_gid; int /*<<< orphan*/  sb_uid; int /*<<< orphan*/  hpfs_mutex; } ;
struct hpfs_dirent {int /*<<< orphan*/  ea_size; int /*<<< orphan*/  creation_date; int /*<<< orphan*/  write_date; int /*<<< orphan*/  read_date; } ;
struct hpfs_boot_block {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  kuid_t ;
typedef  int /*<<< orphan*/  kgid_t ;
typedef  scalar_t__ dnode_secno ;
struct TYPE_8__ {int i_ea_size; int /*<<< orphan*/  i_parent_dir; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HPFS_SUPER_MAGIC ; 
 int SB_MAGIC ; 
 int /*<<< orphan*/  SB_NOATIME ; 
 int SP_MAGIC ; 
 int U32_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct hpfs_sb_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct quad_buffer_head*) ; 
 scalar_t__ FUNC7 (struct super_block*,int,int,char*) ; 
 int /*<<< orphan*/  hpfs_dentry_operations ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,char*,...) ; 
 scalar_t__ FUNC9 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 TYPE_4__* FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct super_block*,int) ; 
 int /*<<< orphan*/ * FUNC14 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct super_block*,struct hpfs_spare_block*) ; 
 int /*<<< orphan*/  FUNC16 (struct super_block*) ; 
 void* FUNC17 (struct super_block*,int,struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*) ; 
 int /*<<< orphan*/  hpfs_sops ; 
 int /*<<< orphan*/  FUNC19 (struct super_block*) ; 
 struct inode* FUNC20 (struct super_block*,int) ; 
 struct hpfs_sb_info* FUNC21 (int,int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ ) ; 
 void* FUNC23 (struct super_block*,int) ; 
 struct hpfs_dirent* FUNC24 (struct inode*,scalar_t__,char*,int,int /*<<< orphan*/ *,struct quad_buffer_head*) ; 
 int /*<<< orphan*/  FUNC25 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC26 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int FUNC28 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int*,int*,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC29 (char*,...) ; 
 int /*<<< orphan*/  FUNC30 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC31 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC32 (struct inode*) ; 

__attribute__((used)) static int FUNC33(struct super_block *s, void *options, int silent)
{
	struct buffer_head *bh0, *bh1, *bh2;
	struct hpfs_boot_block *bootblock;
	struct hpfs_super_block *superblock;
	struct hpfs_spare_block *spareblock;
	struct hpfs_sb_info *sbi;
	struct inode *root;

	kuid_t uid;
	kgid_t gid;
	umode_t umask;
	int lowercase, eas, chk, errs, chkdsk, timeshift;

	dnode_secno root_dno;
	struct hpfs_dirent *de = NULL;
	struct quad_buffer_head qbh;

	int o;

	sbi = FUNC21(sizeof(*sbi), GFP_KERNEL);
	if (!sbi) {
		return -ENOMEM;
	}
	s->s_fs_info = sbi;

	FUNC27(&sbi->hpfs_mutex);
	FUNC16(s);

	uid = FUNC2();
	gid = FUNC1();
	umask = FUNC3();
	lowercase = 0;
	eas = 2;
	chk = 1;
	errs = 1;
	chkdsk = 1;
	timeshift = 0;

	if (!(o = FUNC28(options, &uid, &gid, &umask, &lowercase,
	    &eas, &chk, &errs, &chkdsk, &timeshift))) {
		FUNC29("bad mount options.\n");
		goto bail0;
	}
	if (o==2) {
		FUNC10();
		goto bail0;
	}

	/*sbi->sb_mounting = 1;*/
	FUNC31(s, 512);
	sbi->sb_fs_size = -1;
	if (!(bootblock = FUNC17(s, 0, &bh0, 0))) goto bail1;
	if (!(superblock = FUNC17(s, 16, &bh1, 1))) goto bail2;
	if (!(spareblock = FUNC17(s, 17, &bh2, 0))) goto bail3;

	/* Check magics */
	if (/*le16_to_cpu(bootblock->magic) != BB_MAGIC
	    ||*/ FUNC22(superblock->magic) != SB_MAGIC
	    || FUNC22(spareblock->magic) != SP_MAGIC) {
		if (!silent)
			FUNC29("Bad magic ... probably not HPFS\n");
		goto bail4;
	}

	/* Check version */
	if (!FUNC30(s) && superblock->funcversion != 2 && superblock->funcversion != 3) {
		FUNC29("Bad version %d,%d. Mount readonly to go around\n",
			(int)superblock->version, (int)superblock->funcversion);
		FUNC29("please try recent version of HPFS driver at http://artax.karlin.mff.cuni.cz/~mikulas/vyplody/hpfs/index-e.cgi and if it still can't understand this format, contact author - mikulas@artax.karlin.mff.cuni.cz\n");
		goto bail4;
	}

	s->s_flags |= SB_NOATIME;

	/* Fill superblock stuff */
	s->s_magic = HPFS_SUPER_MAGIC;
	s->s_op = &hpfs_sops;
	s->s_d_op = &hpfs_dentry_operations;
	s->s_time_min =  FUNC23(s, 0);
	s->s_time_max =  FUNC23(s, U32_MAX);

	sbi->sb_root = FUNC22(superblock->root);
	sbi->sb_fs_size = FUNC22(superblock->n_sectors);
	sbi->sb_bitmaps = FUNC22(superblock->bitmaps);
	sbi->sb_dirband_start = FUNC22(superblock->dir_band_start);
	sbi->sb_dirband_size = FUNC22(superblock->n_dir_band);
	sbi->sb_dmap = FUNC22(superblock->dir_band_bitmap);
	sbi->sb_uid = uid;
	sbi->sb_gid = gid;
	sbi->sb_mode = 0777 & ~umask;
	sbi->sb_n_free = -1;
	sbi->sb_n_free_dnodes = -1;
	sbi->sb_lowercase = lowercase;
	sbi->sb_eas = eas;
	sbi->sb_chk = chk;
	sbi->sb_chkdsk = chkdsk;
	sbi->sb_err = errs;
	sbi->sb_timeshift = timeshift;
	sbi->sb_was_error = 0;
	sbi->sb_cp_table = NULL;
	sbi->sb_c_bitmap = -1;
	sbi->sb_max_fwd_alloc = 0xffffff;

	if (sbi->sb_fs_size >= 0x80000000) {
		FUNC8(s, "invalid size in superblock: %08x",
			(unsigned)sbi->sb_fs_size);
		goto bail4;
	}

	if (spareblock->n_spares_used)
		FUNC15(s, spareblock);

	/* Load bitmap directory */
	if (!(sbi->sb_bmp_dir = FUNC13(s, FUNC22(superblock->bitmaps))))
		goto bail4;
	
	/* Check for general fs errors*/
	if (spareblock->dirty && !spareblock->old_wrote) {
		if (errs == 2) {
			FUNC29("Improperly stopped, not mounted\n");
			goto bail4;
		}
		FUNC8(s, "improperly stopped");
	}

	if (!FUNC30(s)) {
		spareblock->dirty = 1;
		spareblock->old_wrote = 0;
		FUNC25(bh2);
	}

	if (FUNC22(spareblock->n_dnode_spares) != FUNC22(spareblock->n_dnode_spares_free)) {
		if (errs >= 2) {
			FUNC29("Spare dnodes used, try chkdsk\n");
			FUNC26(s, 0);
			goto bail4;
		}
		FUNC8(s, "warning: spare dnodes used, try chkdsk");
		if (errs == 0)
			FUNC29("Proceeding, but your filesystem could be corrupted if you delete files or directories\n");
	}
	if (chk) {
		unsigned a;
		if (FUNC22(superblock->dir_band_end) - FUNC22(superblock->dir_band_start) + 1 != FUNC22(superblock->n_dir_band) ||
		    FUNC22(superblock->dir_band_end) < FUNC22(superblock->dir_band_start) || FUNC22(superblock->n_dir_band) > 0x4000) {
			FUNC8(s, "dir band size mismatch: dir_band_start==%08x, dir_band_end==%08x, n_dir_band==%08x",
				FUNC22(superblock->dir_band_start), FUNC22(superblock->dir_band_end), FUNC22(superblock->n_dir_band));
			goto bail4;
		}
		a = sbi->sb_dirband_size;
		sbi->sb_dirband_size = 0;
		if (FUNC7(s, FUNC22(superblock->dir_band_start), FUNC22(superblock->n_dir_band), "dir_band") ||
		    FUNC7(s, FUNC22(superblock->dir_band_bitmap), 4, "dir_band_bitmap") ||
		    FUNC7(s, FUNC22(superblock->bitmaps), 4, "bitmaps")) {
			FUNC26(s, 0);
			goto bail4;
		}
		sbi->sb_dirband_size = a;
	} else
		FUNC29("You really don't want any checks? You are crazy...\n");

	/* Load code page table */
	if (FUNC22(spareblock->n_code_pages))
		if (!(sbi->sb_cp_table = FUNC14(s, FUNC22(spareblock->code_page_dir))))
			FUNC29("code page support is disabled\n");

	FUNC0(bh2);
	FUNC0(bh1);
	FUNC0(bh0);

	root = FUNC20(s, sbi->sb_root);
	if (!root)
		goto bail0;
	FUNC12(root);
	FUNC18(root);
	FUNC32(root);
	s->s_root = FUNC4(root);
	if (!s->s_root)
		goto bail0;

	/*
	 * find the root directory's . pointer & finish filling in the inode
	 */

	root_dno = FUNC9(s, sbi->sb_root);
	if (root_dno)
		de = FUNC24(root, root_dno, "\001\001", 2, NULL, &qbh);
	if (!de)
		FUNC8(s, "unable to find root dir");
	else {
		root->i_atime.tv_sec = FUNC23(s, FUNC22(de->read_date));
		root->i_atime.tv_nsec = 0;
		root->i_mtime.tv_sec = FUNC23(s, FUNC22(de->write_date));
		root->i_mtime.tv_nsec = 0;
		root->i_ctime.tv_sec = FUNC23(s, FUNC22(de->creation_date));
		root->i_ctime.tv_nsec = 0;
		FUNC11(root)->i_ea_size = FUNC22(de->ea_size);
		FUNC11(root)->i_parent_dir = root->i_ino;
		if (root->i_size == -1)
			root->i_size = 2048;
		if (root->i_blocks == -1)
			root->i_blocks = 5;
		FUNC6(&qbh);
	}
	FUNC19(s);
	return 0;

bail4:	FUNC0(bh2);
bail3:	FUNC0(bh1);
bail2:	FUNC0(bh0);
bail1:
bail0:
	FUNC19(s);
	FUNC5(sbi);
	return -EINVAL;
}