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
struct nfsd_file {int /*<<< orphan*/  nf_rcu; scalar_t__ nf_file; scalar_t__ nf_mark; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  nfsd_file_slab_free ; 
 int /*<<< orphan*/  FUNC5 (struct nfsd_file*) ; 

__attribute__((used)) static bool
FUNC6(struct nfsd_file *nf)
{
	bool flush = false;

	FUNC5(nf);
	if (nf->nf_mark)
		FUNC4(nf->nf_mark);
	if (nf->nf_file) {
		FUNC3(nf->nf_file);
		FUNC1(nf->nf_file, NULL);
		FUNC2(nf->nf_file);
		flush = true;
	}
	FUNC0(&nf->nf_rcu, nfsd_file_slab_free);
	return flush;
}