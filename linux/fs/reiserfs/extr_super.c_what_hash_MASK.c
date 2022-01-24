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
struct super_block {int dummy; } ;
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 scalar_t__ R5_HASH ; 
 int /*<<< orphan*/  FUNC0 (struct super_block*) ; 
 scalar_t__ TEA_HASH ; 
 scalar_t__ UNSET_HASH ; 
 scalar_t__ YURA_HASH ; 
 scalar_t__ FUNC1 (struct super_block*) ; 
 scalar_t__ FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (struct super_block*) ; 
 scalar_t__ FUNC5 (struct super_block*) ; 
 scalar_t__ FUNC6 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct super_block *s)
{
	__u32 code;

	code = FUNC8(FUNC0(s));

	/*
	 * reiserfs_hash_detect() == true if any of the hash mount options
	 * were used.  We must check them to make sure the user isn't
	 * using a bad hash value
	 */
	if (code == UNSET_HASH || FUNC2(s))
		code = FUNC1(s);

	if (code != UNSET_HASH && FUNC2(s)) {
		/*
		 * detection has found the hash, and we must check against the
		 * mount options
		 */
		if (FUNC5(s) && code != YURA_HASH) {
			FUNC7(s, "reiserfs-2507",
					 "Error, %s hash detected, "
					 "unable to force rupasov hash",
					 FUNC3(code));
			code = UNSET_HASH;
		} else if (FUNC6(s) && code != TEA_HASH) {
			FUNC7(s, "reiserfs-2508",
					 "Error, %s hash detected, "
					 "unable to force tea hash",
					 FUNC3(code));
			code = UNSET_HASH;
		} else if (FUNC4(s) && code != R5_HASH) {
			FUNC7(s, "reiserfs-2509",
					 "Error, %s hash detected, "
					 "unable to force r5 hash",
					 FUNC3(code));
			code = UNSET_HASH;
		}
	} else {
		/*
		 * find_hash_out was not called or
		 * could not determine the hash
		 */
		if (FUNC5(s)) {
			code = YURA_HASH;
		} else if (FUNC6(s)) {
			code = TEA_HASH;
		} else if (FUNC4(s)) {
			code = R5_HASH;
		}
	}

	/*
	 * if we are mounted RW, and we have a new valid hash code, update
	 * the super
	 */
	if (code != UNSET_HASH &&
	    !FUNC9(s) &&
	    code != FUNC8(FUNC0(s))) {
		FUNC10(FUNC0(s), code);
	}
	return code;
}