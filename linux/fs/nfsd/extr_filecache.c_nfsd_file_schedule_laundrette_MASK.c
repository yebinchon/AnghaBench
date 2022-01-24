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
typedef  enum nfsd_file_laundrette_ctl { ____Placeholder_nfsd_file_laundrette_ctl } nfsd_file_laundrette_ctl ;

/* Variables and functions */
 int NFSD_FILE_LAUNDRETTE_NOFLUSH ; 
 long NFSD_FILE_LRU_LIMIT ; 
 long NFSD_FILE_LRU_THRESHOLD ; 
 int /*<<< orphan*/  NFSD_FILE_SHUTDOWN ; 
 int /*<<< orphan*/  NFSD_LAUNDRETTE_DELAY ; 
 long FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfsd_file_lru_flags ; 
 int /*<<< orphan*/  nfsd_filecache_count ; 
 int /*<<< orphan*/  nfsd_filecache_laundrette ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  system_wq ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(enum nfsd_file_laundrette_ctl ctl)
{
	long count = FUNC0(&nfsd_filecache_count);

	if (count == 0 || FUNC4(NFSD_FILE_SHUTDOWN, &nfsd_file_lru_flags))
		return;

	/* Be more aggressive about scanning if over the threshold */
	if (count > NFSD_FILE_LRU_THRESHOLD)
		FUNC2(system_wq, &nfsd_filecache_laundrette, 0);
	else
		FUNC3(&nfsd_filecache_laundrette, NFSD_LAUNDRETTE_DELAY);

	if (ctl == NFSD_FILE_LAUNDRETTE_NOFLUSH)
		return;

	/* ...and don't delay flushing if we're out of control */
	if (count >= NFSD_FILE_LRU_LIMIT)
		FUNC1(&nfsd_filecache_laundrette);
}