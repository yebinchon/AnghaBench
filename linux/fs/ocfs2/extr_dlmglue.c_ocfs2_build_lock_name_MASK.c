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
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  enum ocfs2_lock_type { ____Placeholder_ocfs2_lock_type } ocfs2_lock_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int OCFS2_LOCK_ID_MAX_LEN ; 
 int /*<<< orphan*/  OCFS2_LOCK_ID_PAD ; 
 int OCFS2_NUM_LOCK_TYPES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC2 (int) ; 
 int FUNC3 (char*,int,char*,int,int /*<<< orphan*/ ,long long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(enum ocfs2_lock_type type,
				  u64 blkno,
				  u32 generation,
				  char *name)
{
	int len;

	FUNC0(type >= OCFS2_NUM_LOCK_TYPES);

	len = FUNC3(name, OCFS2_LOCK_ID_MAX_LEN, "%c%s%016llx%08x",
		       FUNC2(type), OCFS2_LOCK_ID_PAD,
		       (long long)blkno, generation);

	FUNC0(len != (OCFS2_LOCK_ID_MAX_LEN - 1));

	FUNC1(0, "built lock resource with name: %s\n", name);
}