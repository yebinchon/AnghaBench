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
struct unicode_map {int dummy; } ;
struct f2fs_sb_info {TYPE_1__* sb; int /*<<< orphan*/  s_encoding_flags; struct unicode_map* s_encoding; int /*<<< orphan*/  raw_super; } ;
struct f2fs_sb_encodings {scalar_t__ version; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  __u16 ;
struct TYPE_2__ {int /*<<< orphan*/ * s_d_op; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct unicode_map*) ; 
 int FUNC1 (struct unicode_map*) ; 
 int /*<<< orphan*/  f2fs_dentry_ops ; 
 int /*<<< orphan*/  FUNC2 (struct f2fs_sb_info*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC5 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct f2fs_sb_encodings const**,int /*<<< orphan*/ *) ; 
 struct unicode_map* FUNC7 (scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct f2fs_sb_info *sbi)
{
#ifdef CONFIG_UNICODE
	if (f2fs_sb_has_casefold(sbi) && !sbi->s_encoding) {
		const struct f2fs_sb_encodings *encoding_info;
		struct unicode_map *encoding;
		__u16 encoding_flags;

		if (f2fs_sb_has_encrypt(sbi)) {
			f2fs_err(sbi,
				"Can't mount with encoding and encryption");
			return -EINVAL;
		}

		if (f2fs_sb_read_encoding(sbi->raw_super, &encoding_info,
					  &encoding_flags)) {
			f2fs_err(sbi,
				 "Encoding requested by superblock is unknown");
			return -EINVAL;
		}

		encoding = utf8_load(encoding_info->version);
		if (IS_ERR(encoding)) {
			f2fs_err(sbi,
				 "can't mount with superblock charset: %s-%s "
				 "not supported by the kernel. flags: 0x%x.",
				 encoding_info->name, encoding_info->version,
				 encoding_flags);
			return PTR_ERR(encoding);
		}
		f2fs_info(sbi, "Using encoding defined by superblock: "
			 "%s-%s with flags 0x%hx", encoding_info->name,
			 encoding_info->version?:"\b", encoding_flags);

		sbi->s_encoding = encoding;
		sbi->s_encoding_flags = encoding_flags;
		sbi->sb->s_d_op = &f2fs_dentry_ops;
	}
#else
	if (FUNC4(sbi)) {
		FUNC2(sbi, "Filesystem with casefold feature cannot be mounted without CONFIG_UNICODE");
		return -EINVAL;
	}
#endif
	return 0;
}