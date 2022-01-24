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
struct kvp_record {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  num_records; int /*<<< orphan*/  records; int /*<<< orphan*/  fname; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 TYPE_1__* kvp_file_info ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int,...) ; 

__attribute__((used)) static void FUNC9(int pool)
{
	FILE *filep;

	/*
	 * We are going to write our in-memory registry out to
	 * disk; acquire the lock first.
	 */
	FUNC5(pool);

	filep = FUNC3(kvp_file_info[pool].fname, "we");
	if (!filep) {
		FUNC8(LOG_ERR, "Failed to open file, pool: %d; error: %d %s", pool,
				errno, FUNC7(errno));
		FUNC6(pool);
		FUNC0(EXIT_FAILURE);
	}

	FUNC4(kvp_file_info[pool].records, sizeof(struct kvp_record),
				kvp_file_info[pool].num_records, filep);

	if (FUNC2(filep) || FUNC1(filep)) {
		FUNC6(pool);
		FUNC8(LOG_ERR, "Failed to write file, pool: %d", pool);
		FUNC0(EXIT_FAILURE);
	}

	FUNC6(pool);
}