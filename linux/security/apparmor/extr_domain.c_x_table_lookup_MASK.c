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
typedef  int u32 ;
struct aa_label {int dummy; } ;
struct TYPE_3__ {char** table; } ;
struct TYPE_4__ {TYPE_1__ trans; } ;
struct aa_profile {struct aa_label label; TYPE_2__ file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int AA_X_CHILD ; 
 int AA_X_INDEX_MASK ; 
 int AA_X_TYPE_MASK ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC1 (struct aa_label*) ; 
 struct aa_profile* FUNC2 (struct aa_profile*,char const*) ; 
 struct aa_label* FUNC3 (struct aa_label*,char const*,int /*<<< orphan*/ ,int,int) ; 
 char* FUNC4 (int,char const*) ; 

struct aa_label *FUNC5(struct aa_profile *profile, u32 xindex,
				const char **name)
{
	struct aa_label *label = NULL;
	u32 xtype = xindex & AA_X_TYPE_MASK;
	int index = xindex & AA_X_INDEX_MASK;

	FUNC0(!name);

	/* index is guaranteed to be in range, validated at load time */
	/* TODO: move lookup parsing to unpack time so this is a straight
	 *       index into the resultant label
	 */
	for (*name = profile->file.trans.table[index]; !label && *name;
	     *name = FUNC4(xtype, *name)) {
		if (xindex & AA_X_CHILD) {
			struct aa_profile *new_profile;
			/* release by caller */
			new_profile = FUNC2(profile, *name);
			if (new_profile)
				label = &new_profile->label;
			continue;
		}
		label = FUNC3(&profile->label, *name, GFP_ATOMIC,
				       true, false);
		if (FUNC1(label))
			label = NULL;
	}

	/* released by caller */

	return label;
}