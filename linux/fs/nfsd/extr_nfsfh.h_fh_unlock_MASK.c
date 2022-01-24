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
struct svc_fh {int fh_locked; int /*<<< orphan*/  fh_dentry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct svc_fh*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC3(struct svc_fh *fhp)
{
	if (fhp->fh_locked) {
		FUNC1(fhp);
		FUNC2(FUNC0(fhp->fh_dentry));
		fhp->fh_locked = false;
	}
}