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
struct nfsd_file {size_t nf_hashval; int /*<<< orphan*/  nf_lru; int /*<<< orphan*/  nf_node; int /*<<< orphan*/  nf_net; } ;
struct TYPE_2__ {int /*<<< orphan*/  nfb_count; int /*<<< orphan*/  nfb_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct nfsd_file*) ; 
 TYPE_1__* nfsd_file_hashtbl ; 
 int /*<<< orphan*/  nfsd_file_lru ; 
 int /*<<< orphan*/  nfsd_filecache_count ; 
 int /*<<< orphan*/  nfsd_net_id ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct nfsd_file*) ; 

__attribute__((used)) static void
FUNC9(struct nfsd_file *nf)
{
	FUNC4(&nfsd_file_hashtbl[nf->nf_hashval].nfb_lock);

	FUNC8(nf);

	if (FUNC6(nf))
		FUNC7(FUNC5(nf->nf_net, nfsd_net_id));
	--nfsd_file_hashtbl[nf->nf_hashval].nfb_count;
	FUNC1(&nf->nf_node);
	if (!FUNC2(&nf->nf_lru))
		FUNC3(&nfsd_file_lru, &nf->nf_lru);
	FUNC0(&nfsd_filecache_count);
}