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
struct nsinfo {int /*<<< orphan*/  refcnt; scalar_t__ mntns_path; int /*<<< orphan*/  need_setns; int /*<<< orphan*/  nstgid; int /*<<< orphan*/  tgid; int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 struct nsinfo* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nsinfo*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

struct nsinfo *FUNC4(struct nsinfo *nsi)
{
	struct nsinfo *nnsi;

	if (nsi == NULL)
		return NULL;

	nnsi = FUNC0(1, sizeof(*nnsi));
	if (nnsi != NULL) {
		nnsi->pid = nsi->pid;
		nnsi->tgid = nsi->tgid;
		nnsi->nstgid = nsi->nstgid;
		nnsi->need_setns = nsi->need_setns;
		if (nsi->mntns_path) {
			nnsi->mntns_path = FUNC3(nsi->mntns_path);
			if (!nnsi->mntns_path) {
				FUNC1(nnsi);
				return NULL;
			}
		}
		FUNC2(&nnsi->refcnt, 1);
	}

	return nnsi;
}