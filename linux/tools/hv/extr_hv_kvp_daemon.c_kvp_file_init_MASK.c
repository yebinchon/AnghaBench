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
struct TYPE_2__ {char* fname; int fd; int num_blocks; scalar_t__ num_records; int /*<<< orphan*/ * records; } ;

/* Variables and functions */
 int ENTRIES_PER_BLOCK ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  F_OK ; 
 char* KVP_CONFIG_LOC ; 
 int KVP_POOL_COUNT ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int O_CLOEXEC ; 
 int O_CREAT ; 
 int O_RDWR ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* kvp_file_info ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 scalar_t__ FUNC4 (char*,int) ; 
 int FUNC5 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(void)
{
	int  fd;
	char *fname;
	int i;
	int alloc_unit = sizeof(struct kvp_record) * ENTRIES_PER_BLOCK;

	if (FUNC0(KVP_CONFIG_LOC, F_OK)) {
		if (FUNC4(KVP_CONFIG_LOC, 0755 /* rwxr-xr-x */)) {
			FUNC8(LOG_ERR, "Failed to create '%s'; error: %d %s", KVP_CONFIG_LOC,
					errno, FUNC7(errno));
			FUNC1(EXIT_FAILURE);
		}
	}

	for (i = 0; i < KVP_POOL_COUNT; i++) {
		fname = kvp_file_info[i].fname;
		FUNC6(fname, "%s/.kvp_pool_%d", KVP_CONFIG_LOC, i);
		fd = FUNC5(fname, O_RDWR | O_CREAT | O_CLOEXEC, 0644 /* rw-r--r-- */);

		if (fd == -1)
			return 1;

		kvp_file_info[i].fd = fd;
		kvp_file_info[i].num_blocks = 1;
		kvp_file_info[i].records = FUNC3(alloc_unit);
		if (kvp_file_info[i].records == NULL)
			return 1;
		kvp_file_info[i].num_records = 0;
		FUNC2(i);
	}

	return 0;
}