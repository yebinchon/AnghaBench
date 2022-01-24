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
typedef  int /*<<< orphan*/  u64 ;
struct branch_type_stat {int dummy; } ;
typedef  int /*<<< orphan*/  str ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct branch_type_stat*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 int FUNC2 (char*,int,char*,char*) ; 

__attribute__((used)) static int FUNC3(FILE *fp, char *bf, int bfsize,
				   u64 branch_count, u64 predicted_count,
				   u64 abort_count, u64 cycles_count,
				   u64 iter_count, u64 iter_cycles,
				   u64 from_count,
				   struct branch_type_stat *brtype_stat)
{
	char str[256];

	FUNC0(str, sizeof(str), branch_count,
			 predicted_count, abort_count, cycles_count,
			 iter_count, iter_cycles, from_count, brtype_stat);

	if (fp)
		return FUNC1(fp, "%s", str);

	return FUNC2(bf, bfsize, "%s", str);
}