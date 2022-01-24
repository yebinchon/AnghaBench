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
typedef  int /*<<< orphan*/  wchar_t ;
struct super_block {int dummy; } ;
struct TYPE_2__ {scalar_t__ utf8; } ;
struct msdos_sb_info {int /*<<< orphan*/  nls_io; TYPE_1__ options; } ;

/* Variables and functions */
 int /*<<< orphan*/  FAT_MAX_UNI_CHARS ; 
 struct msdos_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  UTF16_HOST_ENDIAN ; 
 int FUNC1 (struct super_block*,unsigned char*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int) ; 

__attribute__((used)) static inline int FUNC3(struct super_block *sb, const wchar_t *uni,
				unsigned char *buf, int size)
{
	struct msdos_sb_info *sbi = FUNC0(sb);
	if (sbi->options.utf8)
		return FUNC2(uni, FAT_MAX_UNI_CHARS,
				UTF16_HOST_ENDIAN, buf, size);
	else
		return FUNC1(sb, buf, uni, size, sbi->nls_io);
}