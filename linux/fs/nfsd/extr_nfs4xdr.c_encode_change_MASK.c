#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct svc_export {int ex_flags; TYPE_2__* cd; } ;
struct TYPE_3__ {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct kstat {TYPE_1__ ctime; } ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_4__ {int /*<<< orphan*/  flush_time; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 int NFSEXP_V4ROOT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kstat*,struct inode*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __be32 *FUNC5(__be32 *p, struct kstat *stat, struct inode *inode,
			     struct svc_export *exp)
{
	if (exp->ex_flags & NFSEXP_V4ROOT) {
		*p++ = FUNC2(FUNC1(exp->cd->flush_time));
		*p++ = 0;
	} else if (FUNC0(inode)) {
		p = FUNC4(p, FUNC3(stat, inode));
	} else {
		*p++ = FUNC2(stat->ctime.tv_sec);
		*p++ = FUNC2(stat->ctime.tv_nsec);
	}
	return p;
}