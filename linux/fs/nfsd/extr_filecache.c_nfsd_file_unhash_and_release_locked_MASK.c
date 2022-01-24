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
struct nfsd_file {size_t nf_hashval; int /*<<< orphan*/  nf_lru; int /*<<< orphan*/  nf_ref; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  nfb_lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* nfsd_file_hashtbl ; 
 int /*<<< orphan*/  FUNC3 (struct nfsd_file*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfsd_file*) ; 

__attribute__((used)) static bool
FUNC5(struct nfsd_file *nf, struct list_head *dispose)
{
	FUNC2(&nfsd_file_hashtbl[nf->nf_hashval].nfb_lock);

	FUNC4(nf);
	if (!FUNC3(nf))
		return false;
	/* keep final reference for nfsd_file_lru_dispose */
	if (FUNC0(&nf->nf_ref, -1, 1))
		return true;

	FUNC1(&nf->nf_lru, dispose);
	return true;
}