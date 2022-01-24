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
typedef  int /*<<< orphan*/  umode_t ;
struct posix_acl {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 struct posix_acl* FUNC0 (struct posix_acl*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct posix_acl*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct posix_acl*) ; 

int
FUNC3(struct posix_acl **acl, gfp_t gfp, umode_t *mode_p)
{
	struct posix_acl *clone = FUNC0(*acl, gfp);
	int err = -ENOMEM;
	if (clone) {
		err = FUNC1(clone, mode_p);
		if (err < 0) {
			FUNC2(clone);
			clone = NULL;
		}
	}
	FUNC2(*acl);
	*acl = clone;
	return err;
}