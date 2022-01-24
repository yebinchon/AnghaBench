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
typedef  int /*<<< orphan*/  wchar_t ;
struct super_block {int dummy; } ;
struct msdos_sb_info {int dummy; } ;
struct msdos_dir_entry {scalar_t__* name; int attr; } ;
struct inode {struct super_block* i_sb; } ;
struct fat_slot_info {unsigned char nr_slots; struct msdos_dir_entry* de; struct buffer_head* bh; int /*<<< orphan*/  i_pos; scalar_t__ slot_off; } ;
struct buffer_head {int dummy; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int ATTR_EXT ; 
 int ATTR_VOLUME ; 
 scalar_t__ DELETED_FLAG ; 
 int ENOENT ; 
 int FAT_MAX_SHORT_SIZE ; 
 int FAT_MAX_UNI_CHARS ; 
 int FAT_MAX_UNI_SIZE ; 
 scalar_t__ FUNC0 (scalar_t__*) ; 
 struct msdos_sb_info* FUNC1 (struct super_block*) ; 
 int PARSE_EOF ; 
 int PARSE_INVALID ; 
 int PARSE_NOT_LONGNAME ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct inode*,scalar_t__*,struct buffer_head**,struct msdos_dir_entry**) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,struct buffer_head*,struct msdos_dir_entry*) ; 
 scalar_t__ FUNC5 (struct msdos_sb_info*,unsigned char const*,int,void*,int) ; 
 int FUNC6 (struct inode*,scalar_t__*,struct buffer_head**,struct msdos_dir_entry**,int /*<<< orphan*/ **,unsigned char*) ; 
 int FUNC7 (struct super_block*,struct msdos_dir_entry*,unsigned char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct super_block*,int /*<<< orphan*/ *,void*,int) ; 

int FUNC9(struct inode *inode, const unsigned char *name,
		    int name_len, struct fat_slot_info *sinfo)
{
	struct super_block *sb = inode->i_sb;
	struct msdos_sb_info *sbi = FUNC1(sb);
	struct buffer_head *bh = NULL;
	struct msdos_dir_entry *de;
	unsigned char nr_slots;
	wchar_t *unicode = NULL;
	unsigned char bufname[FAT_MAX_SHORT_SIZE];
	loff_t cpos = 0;
	int err, len;

	err = -ENOENT;
	while (1) {
		if (FUNC3(inode, &cpos, &bh, &de) == -1)
			goto end_of_dir;
parse_record:
		nr_slots = 0;
		if (de->name[0] == DELETED_FLAG)
			continue;
		if (de->attr != ATTR_EXT && (de->attr & ATTR_VOLUME))
			continue;
		if (de->attr != ATTR_EXT && FUNC0(de->name))
			continue;
		if (de->attr == ATTR_EXT) {
			int status = FUNC6(inode, &cpos, &bh, &de,
						    &unicode, &nr_slots);
			if (status < 0) {
				err = status;
				goto end_of_dir;
			} else if (status == PARSE_INVALID)
				continue;
			else if (status == PARSE_NOT_LONGNAME)
				goto parse_record;
			else if (status == PARSE_EOF)
				goto end_of_dir;
		}

		/* Never prepend '.' to hidden files here.
		 * That is done only for msdos mounts (and only when
		 * 'dotsOK=yes'); if we are executing here, it is in the
		 * context of a vfat mount.
		 */
		len = FUNC7(sb, de, bufname, 0);
		if (len == 0)
			continue;

		/* Compare shortname */
		if (FUNC5(sbi, name, name_len, bufname, len))
			goto found;

		if (nr_slots) {
			void *longname = unicode + FAT_MAX_UNI_CHARS;
			int size = PATH_MAX - FAT_MAX_UNI_SIZE;

			/* Compare longname */
			len = FUNC8(sb, unicode, longname, size);
			if (FUNC5(sbi, name, name_len, longname, len))
				goto found;
		}
	}

found:
	nr_slots++;	/* include the de */
	sinfo->slot_off = cpos - nr_slots * sizeof(*de);
	sinfo->nr_slots = nr_slots;
	sinfo->de = de;
	sinfo->bh = bh;
	sinfo->i_pos = FUNC4(sb, sinfo->bh, sinfo->de);
	err = 0;
end_of_dir:
	if (unicode)
		FUNC2(unicode);

	return err;
}