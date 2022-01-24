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
struct nfsd_file {int /*<<< orphan*/  nf_flags; int /*<<< orphan*/  nf_ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFSD_FILE_HASHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nfsd_file*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nfsd_file*) ; 

__attribute__((used)) static int
FUNC5(struct nfsd_file *nf)
{
	int count;
	FUNC4(nf);

	count = FUNC1(&nf->nf_ref);
	if (!count) {
		FUNC0(FUNC3(NFSD_FILE_HASHED, &nf->nf_flags));
		FUNC2(nf);
	}
	return count;
}