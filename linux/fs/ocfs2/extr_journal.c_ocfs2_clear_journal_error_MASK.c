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
struct super_block {int /*<<< orphan*/  s_id; } ;
typedef  int /*<<< orphan*/  journal_t ;

/* Variables and functions */
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,...) ; 

__attribute__((used)) static void FUNC4(struct super_block *sb,
				      journal_t *journal,
				      int slot)
{
	int olderr;

	olderr = FUNC2(journal);
	if (olderr) {
		FUNC3(ML_ERROR, "File system error %d recorded in "
		     "journal %u.\n", olderr, slot);
		FUNC3(ML_ERROR, "File system on device %s needs checking.\n",
		     sb->s_id);

		FUNC0(journal);
		FUNC1(journal);
	}
}