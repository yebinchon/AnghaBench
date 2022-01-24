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
struct nfsd_file_mark {int /*<<< orphan*/  nfm_mark; int /*<<< orphan*/  nfm_ref; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfsd_file_fsnotify_group ; 

__attribute__((used)) static void
FUNC3(struct nfsd_file_mark *nfm)
{
	if (FUNC0(&nfm->nfm_ref)) {

		FUNC1(&nfm->nfm_mark, nfsd_file_fsnotify_group);
		FUNC2(&nfm->nfm_mark);
	}
}