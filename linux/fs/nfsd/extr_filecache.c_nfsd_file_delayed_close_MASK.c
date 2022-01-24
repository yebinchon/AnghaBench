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
struct work_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LONG_MAX ; 
 int /*<<< orphan*/  NFSD_FILE_LAUNDRETTE_NOFLUSH ; 
 int /*<<< orphan*/  NFSD_FILE_LRU_RESCAN ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  head ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfsd_file_lru ; 
 int /*<<< orphan*/  nfsd_file_lru_cb ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfsd_file_lru_flags ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct work_struct *work)
{
	FUNC0(head);

	FUNC3(&nfsd_file_lru, nfsd_file_lru_cb, &head, LONG_MAX);

	if (FUNC6(NFSD_FILE_LRU_RESCAN, &nfsd_file_lru_flags))
		FUNC5(NFSD_FILE_LAUNDRETTE_NOFLUSH);

	if (!FUNC2(&head)) {
		FUNC4(&head);
		FUNC1();
	}
}