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
typedef  int /*<<< orphan*/  work ;
typedef  int wchar_t ;
struct super_block {int dummy; } ;
struct nls_table {int dummy; } ;
struct TYPE_2__ {int isvfat; int nocase; unsigned short shortname; } ;
struct msdos_sb_info {TYPE_1__ options; struct nls_table* nls_disk; } ;
struct msdos_dir_entry {int attr; int lcase; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ATTR_HIDDEN ; 
 int CASE_LOWER_BASE ; 
 int CASE_LOWER_EXT ; 
 int /*<<< orphan*/  FAT_MAX_SHORT_SIZE ; 
 int MSDOS_NAME ; 
 struct msdos_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct nls_table*,char*,int,int*) ; 
 int FUNC2 (struct nls_table*,unsigned char*,int,int*,unsigned short,int) ; 
 unsigned char FUNC3 (unsigned char) ; 
 int FUNC4 (struct super_block*,int*,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int,int) ; 

__attribute__((used)) static int FUNC7(struct super_block *sb,
			   const struct msdos_dir_entry *de,
			   unsigned char *name, int dot_hidden)
{
	const struct msdos_sb_info *sbi = FUNC0(sb);
	int isvfat = sbi->options.isvfat;
	int nocase = sbi->options.nocase;
	unsigned short opt_shortname = sbi->options.shortname;
	struct nls_table *nls_disk = sbi->nls_disk;
	wchar_t uni_name[14];
	unsigned char c, work[MSDOS_NAME];
	unsigned char *ptname = name;
	int chi, chl, i, j, k;
	int dotoffset = 0;
	int name_len = 0, uni_len = 0;

	if (!isvfat && dot_hidden && (de->attr & ATTR_HIDDEN)) {
		*ptname++ = '.';
		dotoffset = 1;
	}

	FUNC5(work, de->name, sizeof(work));
	/* For an explanation of the special treatment of 0x05 in
	 * filenames, see msdos_format_name in namei_msdos.c
	 */
	if (work[0] == 0x05)
		work[0] = 0xE5;

	/* Filename */
	for (i = 0, j = 0; i < 8;) {
		c = work[i];
		if (!c)
			break;
		chl = FUNC2(nls_disk, &work[i], 8 - i,
					&uni_name[j++], opt_shortname,
					de->lcase & CASE_LOWER_BASE);
		if (chl <= 1) {
			if (!isvfat)
				ptname[i] = nocase ? c : FUNC3(c);
			i++;
			if (c != ' ') {
				name_len = i;
				uni_len  = j;
			}
		} else {
			uni_len = j;
			if (isvfat)
				i += FUNC6(chl, 8-i);
			else {
				for (chi = 0; chi < chl && i < 8; chi++, i++)
					ptname[i] = work[i];
			}
			if (chl)
				name_len = i;
		}
	}

	i = name_len;
	j = uni_len;
	FUNC1(nls_disk, ".", 1, &uni_name[j++]);
	if (!isvfat)
		ptname[i] = '.';
	i++;

	/* Extension */
	for (k = 8; k < MSDOS_NAME;) {
		c = work[k];
		if (!c)
			break;
		chl = FUNC2(nls_disk, &work[k], MSDOS_NAME - k,
					&uni_name[j++], opt_shortname,
					de->lcase & CASE_LOWER_EXT);
		if (chl <= 1) {
			k++;
			if (!isvfat)
				ptname[i] = nocase ? c : FUNC3(c);
			i++;
			if (c != ' ') {
				name_len = i;
				uni_len  = j;
			}
		} else {
			uni_len = j;
			if (isvfat) {
				int offset = FUNC6(chl, MSDOS_NAME-k);
				k += offset;
				i += offset;
			} else {
				for (chi = 0; chi < chl && k < MSDOS_NAME;
				     chi++, i++, k++) {
						ptname[i] = work[k];
				}
			}
			if (chl)
				name_len = i;
		}
	}

	if (name_len > 0) {
		name_len += dotoffset;

		if (sbi->options.isvfat) {
			uni_name[uni_len] = 0x0000;
			name_len = FUNC4(sb, uni_name, name,
						 FAT_MAX_SHORT_SIZE);
		}
	}

	return name_len;
}