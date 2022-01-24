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
struct super_block {int dummy; } ;
struct ext4_sb_info {int s_itb_per_group; TYPE_1__* s_es; } ;
struct ext4_group_desc {int dummy; } ;
typedef  scalar_t__ ext4_group_t ;
typedef  scalar_t__ ext4_fsblk_t ;
struct TYPE_2__ {int /*<<< orphan*/  s_first_data_block; } ;

/* Variables and functions */
 int FUNC0 (struct ext4_sb_info*,scalar_t__) ; 
 int FUNC1 (struct super_block*) ; 
 int FUNC2 (struct super_block*) ; 
 struct ext4_sb_info* FUNC3 (struct super_block*) ; 
 int FUNC4 (struct super_block*,scalar_t__) ; 
 int FUNC5 (struct super_block*,scalar_t__) ; 
 scalar_t__ FUNC6 (struct super_block*,struct ext4_group_desc*) ; 
 int FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,char*,int) ; 
 struct ext4_group_desc* FUNC9 (struct super_block*,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC11 (struct super_block*) ; 
 scalar_t__ FUNC12 (struct super_block*,struct ext4_group_desc*) ; 
 scalar_t__ FUNC13 (struct super_block*,struct ext4_group_desc*) ; 
 int /*<<< orphan*/  FUNC14 (int,char*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct super_block *sb, ext4_group_t grp,
			  char *buf)
{
	struct ext4_sb_info	*sbi = FUNC3(sb);
	struct ext4_group_desc	*gdp;
	ext4_fsblk_t		first_block, last_block, b;
	ext4_group_t		i, ngroups = FUNC10(sb);
	int			s, j, count = 0;

	if (!FUNC11(sb))
		return (FUNC4(sb, grp) + FUNC5(sb, grp) +
			sbi->s_itb_per_group + 2);

	first_block = FUNC15(sbi->s_es->s_first_data_block) +
		(grp * FUNC1(sb));
	last_block = first_block + FUNC1(sb) - 1;
	for (i = 0; i < ngroups; i++) {
		gdp = FUNC9(sb, i, NULL);
		b = FUNC6(sb, gdp);
		if (b >= first_block && b <= last_block) {
			FUNC14(FUNC0(sbi, b - first_block), buf);
			count++;
		}
		b = FUNC12(sb, gdp);
		if (b >= first_block && b <= last_block) {
			FUNC14(FUNC0(sbi, b - first_block), buf);
			count++;
		}
		b = FUNC13(sb, gdp);
		if (b >= first_block && b + sbi->s_itb_per_group <= last_block)
			for (j = 0; j < sbi->s_itb_per_group; j++, b++) {
				int c = FUNC0(sbi, b - first_block);
				FUNC14(c, buf);
				count++;
			}
		if (i != grp)
			continue;
		s = 0;
		if (FUNC4(sb, grp)) {
			FUNC14(s++, buf);
			count++;
		}
		j = FUNC5(sb, grp);
		if (s + j > FUNC1(sb)) {
			FUNC8(sb, "Invalid number of block group "
				   "descriptor blocks: %d", j);
			j = FUNC1(sb) - s;
		}
		count += j;
		for (; j > 0; j--)
			FUNC14(FUNC0(sbi, s++), buf);
	}
	if (!count)
		return 0;
	return FUNC2(sb) -
		FUNC7(buf, FUNC2(sb) / 8);
}