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
struct nfs4_file {int /*<<< orphan*/  fi_lock; } ;
struct nfs4_clnt_odstate {int /*<<< orphan*/  co_client; int /*<<< orphan*/  co_perfile; int /*<<< orphan*/  co_odcount; struct nfs4_file* co_file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct nfs4_clnt_odstate*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct nfs4_file*) ; 
 int /*<<< orphan*/  odstate_slab ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct nfs4_clnt_odstate *co)
{
	struct nfs4_file *fp;

	if (!co)
		return;

	fp = co->co_file;
	if (FUNC3(&co->co_odcount, &fp->fi_lock)) {
		FUNC1(&co->co_perfile);
		FUNC4(&fp->fi_lock);

		FUNC2(co->co_client, fp);
		FUNC0(odstate_slab, co);
	}
}