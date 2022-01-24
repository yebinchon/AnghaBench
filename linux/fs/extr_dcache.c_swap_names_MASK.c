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
struct TYPE_2__ {long name; long hash_len; scalar_t__ len; } ;
struct dentry {long d_iname; TYPE_1__ d_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DNAME_INLINE_LEN ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (long,long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (long,long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct dentry *dentry, struct dentry *target)
{
	if (FUNC5(FUNC2(target))) {
		if (FUNC5(FUNC2(dentry))) {
			/*
			 * Both external: swap the pointers
			 */
			FUNC4(target->d_name.name, dentry->d_name.name);
		} else {
			/*
			 * dentry:internal, target:external.  Steal target's
			 * storage and make target internal.
			 */
			FUNC3(target->d_iname, dentry->d_name.name,
					dentry->d_name.len + 1);
			dentry->d_name.name = target->d_name.name;
			target->d_name.name = target->d_iname;
		}
	} else {
		if (FUNC5(FUNC2(dentry))) {
			/*
			 * dentry:external, target:internal.  Give dentry's
			 * storage to target and make dentry internal
			 */
			FUNC3(dentry->d_iname, target->d_name.name,
					target->d_name.len + 1);
			target->d_name.name = dentry->d_name.name;
			dentry->d_name.name = dentry->d_iname;
		} else {
			/*
			 * Both are internal.
			 */
			unsigned int i;
			FUNC0(!FUNC1(DNAME_INLINE_LEN, sizeof(long)));
			for (i = 0; i < DNAME_INLINE_LEN / sizeof(long); i++) {
				FUNC4(((long *) &dentry->d_iname)[i],
				     ((long *) &target->d_iname)[i]);
			}
		}
	}
	FUNC4(dentry->d_name.hash_len, target->d_name.hash_len);
}