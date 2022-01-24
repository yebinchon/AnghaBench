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
struct svc_export {int ex_flags; } ;
struct knfsd_fh {scalar_t__ ofh_dirino; int /*<<< orphan*/  ofh_generation; int /*<<< orphan*/  ofh_ino; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_generation; int /*<<< orphan*/  i_ino; } ;

/* Variables and functions */
 int NFSEXP_NOSUBTREECHECK ; 
 TYPE_1__* FUNC0 (struct dentry*) ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct dentry *dentry,
				  struct svc_export *exp,
				  struct knfsd_fh *fh)
{
	fh->ofh_ino = FUNC2(FUNC0(dentry)->i_ino);
	fh->ofh_generation = FUNC0(dentry)->i_generation;
	if (FUNC1(dentry) ||
	    (exp->ex_flags & NFSEXP_NOSUBTREECHECK))
		fh->ofh_dirino = 0;
}