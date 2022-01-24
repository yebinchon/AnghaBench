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
struct nfs4_file {int dummy; } ;
struct knfsd_fh {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct knfsd_fh*) ; 
 struct nfs4_file* FUNC1 (struct knfsd_fh*,unsigned int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct knfsd_fh*,unsigned int,struct nfs4_file*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  state_lock ; 

__attribute__((used)) static struct nfs4_file *
FUNC8(struct nfs4_file *new, struct knfsd_fh *fh)
{
	struct nfs4_file *fp;
	unsigned int hashval = FUNC0(fh);

	FUNC4();
	fp = FUNC1(fh, hashval);
	FUNC5();
	if (fp)
		return fp;

	FUNC6(&state_lock);
	fp = FUNC1(fh, hashval);
	if (FUNC2(fp == NULL)) {
		FUNC3(fh, hashval, new);
		fp = new;
	}
	FUNC7(&state_lock);

	return fp;
}