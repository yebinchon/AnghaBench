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
struct TYPE_2__ {int /*<<< orphan*/  ipflags1; int /*<<< orphan*/  ipmsglim; int /*<<< orphan*/  ipuser; int /*<<< orphan*/  ippathid; } ;
union iucv_param {TYPE_1__ ctrl; } ;
typedef  int /*<<< orphan*/  u8 ;
struct iucv_path {int /*<<< orphan*/  flags; int /*<<< orphan*/  msglim; void* private; int /*<<< orphan*/  pathid; } ;
struct iucv_handler {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  IUCV_ACCEPT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  iucv_buffer_cpumask ; 
 int FUNC1 (int /*<<< orphan*/ ,union iucv_param*) ; 
 union iucv_param** iucv_param ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (union iucv_param*,int /*<<< orphan*/ ,int) ; 
 size_t FUNC6 () ; 

int FUNC7(struct iucv_path *path, struct iucv_handler *handler,
		     u8 *userdata, void *private)
{
	union iucv_param *parm;
	int rc;

	FUNC2();
	if (FUNC0(&iucv_buffer_cpumask)) {
		rc = -EIO;
		goto out;
	}
	/* Prepare parameter block. */
	parm = iucv_param[FUNC6()];
	FUNC5(parm, 0, sizeof(union iucv_param));
	parm->ctrl.ippathid = path->pathid;
	parm->ctrl.ipmsglim = path->msglim;
	if (userdata)
		FUNC4(parm->ctrl.ipuser, userdata, sizeof(parm->ctrl.ipuser));
	parm->ctrl.ipflags1 = path->flags;

	rc = FUNC1(IUCV_ACCEPT, parm);
	if (!rc) {
		path->private = private;
		path->msglim = parm->ctrl.ipmsglim;
		path->flags = parm->ctrl.ipflags1;
	}
out:
	FUNC3();
	return rc;
}