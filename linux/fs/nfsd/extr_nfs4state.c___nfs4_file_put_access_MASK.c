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
struct nfsd_file {int dummy; } ;
struct nfs4_file {int /*<<< orphan*/  fi_lock; int /*<<< orphan*/ * fi_fds; int /*<<< orphan*/ * fi_access; } ;

/* Variables and functions */
 size_t O_RDWR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nfsd_file*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct nfsd_file*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct nfs4_file *fp, int oflag)
{
	FUNC2(&fp->fi_lock);

	if (FUNC0(&fp->fi_access[oflag], &fp->fi_lock)) {
		struct nfsd_file *f1 = NULL;
		struct nfsd_file *f2 = NULL;

		FUNC5(f1, fp->fi_fds[oflag]);
		if (FUNC1(&fp->fi_access[1 - oflag]) == 0)
			FUNC5(f2, fp->fi_fds[O_RDWR]);
		FUNC4(&fp->fi_lock);
		if (f1)
			FUNC3(f1);
		if (f2)
			FUNC3(f2);
	}
}