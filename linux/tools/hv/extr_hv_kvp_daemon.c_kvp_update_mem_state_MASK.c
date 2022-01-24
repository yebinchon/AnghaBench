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
struct TYPE_2__ {int num_blocks; size_t num_records; struct kvp_record* records; int /*<<< orphan*/  fname; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int ENTRIES_PER_BLOCK ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (struct kvp_record*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 TYPE_1__* kvp_file_info ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 struct kvp_record* FUNC8 (struct kvp_record*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC11(int pool)
{
	FILE *filep;
	size_t records_read = 0;
	struct kvp_record *record = kvp_file_info[pool].records;
	struct kvp_record *readp;
	int num_blocks = kvp_file_info[pool].num_blocks;
	int alloc_unit = sizeof(struct kvp_record) * ENTRIES_PER_BLOCK;

	FUNC6(pool);

	filep = FUNC4(kvp_file_info[pool].fname, "re");
	if (!filep) {
		FUNC10(LOG_ERR, "Failed to open file, pool: %d; error: %d %s", pool,
				errno, FUNC9(errno));
		FUNC7(pool);
		FUNC0(EXIT_FAILURE);
	}
	for (;;) {
		readp = &record[records_read];
		records_read += FUNC5(readp, sizeof(struct kvp_record),
				ENTRIES_PER_BLOCK * num_blocks - records_read,
				filep);

		if (FUNC3(filep)) {
			FUNC10(LOG_ERR,
				"Failed to read file, pool: %d; error: %d %s",
				 pool, errno, FUNC9(errno));
			FUNC7(pool);
			FUNC0(EXIT_FAILURE);
		}

		if (!FUNC2(filep)) {
			/*
			 * We have more data to read.
			 */
			num_blocks++;
			record = FUNC8(record, alloc_unit * num_blocks);

			if (record == NULL) {
				FUNC10(LOG_ERR, "malloc failed");
				FUNC7(pool);
				FUNC0(EXIT_FAILURE);
			}
			continue;
		}
		break;
	}

	kvp_file_info[pool].num_blocks = num_blocks;
	kvp_file_info[pool].records = record;
	kvp_file_info[pool].num_records = records_read;

	FUNC1(filep);
	FUNC7(pool);
}