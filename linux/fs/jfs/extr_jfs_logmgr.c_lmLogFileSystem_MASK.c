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
typedef  int /*<<< orphan*/  uuid_t ;
struct logsuper {TYPE_1__* active; } ;
struct lbuf {scalar_t__ l_ldata; } ;
struct jfs_sb_info {int aggregate; int /*<<< orphan*/  uuid; } ;
struct jfs_log {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  uuid; } ;

/* Variables and functions */
 int EIO ; 
 int EMFILE ; 
 int MAX_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct jfs_log*,struct lbuf*,int) ; 
 int /*<<< orphan*/  lbmFREE ; 
 int /*<<< orphan*/  FUNC2 (struct lbuf*) ; 
 int FUNC3 (struct lbuf*,int /*<<< orphan*/ ) ; 
 int lbmRELEASE ; 
 int FUNC4 (struct jfs_log*,int,struct lbuf**) ; 
 int lbmSYNC ; 
 int lbmWRITE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uuid_null ; 

__attribute__((used)) static int FUNC8(struct jfs_log * log, struct jfs_sb_info *sbi,
			   int activate)
{
	int rc = 0;
	int i;
	struct logsuper *logsuper;
	struct lbuf *bpsuper;
	uuid_t *uuid = &sbi->uuid;

	/*
	 * insert/remove file system device to log active file system list.
	 */
	if ((rc = FUNC4(log, 1, &bpsuper)))
		return rc;

	logsuper = (struct logsuper *) bpsuper->l_ldata;
	if (activate) {
		for (i = 0; i < MAX_ACTIVE; i++)
			if (FUNC7(&logsuper->active[i].uuid)) {
				FUNC5(&logsuper->active[i].uuid, uuid);
				sbi->aggregate = i;
				break;
			}
		if (i == MAX_ACTIVE) {
			FUNC0("Too many file systems sharing journal!");
			FUNC2(bpsuper);
			return -EMFILE;	/* Is there a better rc? */
		}
	} else {
		for (i = 0; i < MAX_ACTIVE; i++)
			if (FUNC6(&logsuper->active[i].uuid, uuid)) {
				FUNC5(&logsuper->active[i].uuid,
					  &uuid_null);
				break;
			}
		if (i == MAX_ACTIVE) {
			FUNC0("Somebody stomped on the journal!");
			FUNC2(bpsuper);
			return -EIO;
		}

	}

	/*
	 * synchronous write log superblock:
	 *
	 * write sidestream bypassing write queue:
	 * at file system mount, log super block is updated for
	 * activation of the file system before any log record
	 * (MOUNT record) of the file system, and at file system
	 * unmount, all meta data for the file system has been
	 * flushed before log super block is updated for deactivation
	 * of the file system.
	 */
	FUNC1(log, bpsuper, lbmWRITE | lbmRELEASE | lbmSYNC);
	rc = FUNC3(bpsuper, lbmFREE);

	return rc;
}