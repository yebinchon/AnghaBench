#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct super_block {int /*<<< orphan*/  s_flags; } ;
struct TYPE_4__ {TYPE_1__* s_es; } ;
struct TYPE_3__ {int /*<<< orphan*/  s_feature_ro_compat; int /*<<< orphan*/  s_feature_incompat; } ;

/* Variables and functions */
 int EXT4_FEATURE_INCOMPAT_SUPP ; 
 int EXT4_FEATURE_RO_COMPAT_SUPP ; 
 TYPE_2__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  SB_RDONLY ; 
 scalar_t__ FUNC1 (struct super_block*) ; 
 scalar_t__ FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 scalar_t__ FUNC4 (struct super_block*) ; 
 scalar_t__ FUNC5 (struct super_block*) ; 
 scalar_t__ FUNC6 (struct super_block*) ; 
 scalar_t__ FUNC7 (struct super_block*) ; 
 scalar_t__ FUNC8 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct super_block *sb, int readonly)
{
	if (FUNC7(sb)) {
		FUNC9(sb, KERN_ERR,
			"Couldn't mount because of "
			"unsupported optional features (%x)",
			(FUNC10(FUNC0(sb)->s_es->s_feature_incompat) &
			~EXT4_FEATURE_INCOMPAT_SUPP));
		return 0;
	}

#ifndef CONFIG_UNICODE
	if (FUNC2(sb)) {
		FUNC9(sb, KERN_ERR,
			 "Filesystem with casefold feature cannot be "
			 "mounted without CONFIG_UNICODE");
		return 0;
	}
#endif

	if (readonly)
		return 1;

	if (FUNC6(sb)) {
		FUNC9(sb, KERN_INFO, "filesystem is read-only");
		sb->s_flags |= SB_RDONLY;
		return 1;
	}

	/* Check that feature set is OK for a read-write mount */
	if (FUNC8(sb)) {
		FUNC9(sb, KERN_ERR, "couldn't mount RDWR because of "
			 "unsupported optional features (%x)",
			 (FUNC10(FUNC0(sb)->s_es->s_feature_ro_compat) &
				~EXT4_FEATURE_RO_COMPAT_SUPP));
		return 0;
	}
	if (FUNC1(sb) && !FUNC3(sb)) {
		FUNC9(sb, KERN_ERR,
			 "Can't support bigalloc feature without "
			 "extents feature\n");
		return 0;
	}

#ifndef CONFIG_QUOTA
	if (FUNC5(sb) && !readonly) {
		FUNC9(sb, KERN_ERR,
			 "Filesystem with quota feature cannot be mounted RDWR "
			 "without CONFIG_QUOTA");
		return 0;
	}
	if (FUNC4(sb) && !readonly) {
		FUNC9(sb, KERN_ERR,
			 "Filesystem with project quota feature cannot be mounted RDWR "
			 "without CONFIG_QUOTA");
		return 0;
	}
#endif  /* CONFIG_QUOTA */
	return 1;
}