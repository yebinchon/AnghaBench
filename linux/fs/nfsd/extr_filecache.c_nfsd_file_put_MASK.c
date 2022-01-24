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
struct nfsd_file {int /*<<< orphan*/  nf_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFSD_FILE_HASHED ; 
 int /*<<< orphan*/  NFSD_FILE_LAUNDRETTE_MAY_FLUSH ; 
 int /*<<< orphan*/  NFSD_FILE_REFERENCED ; 
 int /*<<< orphan*/  FUNC0 (struct nfsd_file*) ; 
 int FUNC1 (struct nfsd_file*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC5(struct nfsd_file *nf)
{
	bool is_hashed = FUNC4(NFSD_FILE_HASHED, &nf->nf_flags) != 0;
	bool unused = !FUNC0(nf);

	FUNC3(NFSD_FILE_REFERENCED, &nf->nf_flags);
	if (FUNC1(nf) == 1 && is_hashed && unused)
		FUNC2(NFSD_FILE_LAUNDRETTE_MAY_FLUSH);
}