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
struct vport_parms {int /*<<< orphan*/  type; } ;
struct vport_ops {int /*<<< orphan*/  owner; struct vport* (* create ) (struct vport_parms const*) ;} ;
struct vport {int /*<<< orphan*/  hash_node; int /*<<< orphan*/  dp; } ;
struct hlist_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAFNOSUPPORT ; 
 int /*<<< orphan*/  EAGAIN ; 
 struct vport* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct vport*) ; 
 struct hlist_head* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct hlist_head*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 struct vport_ops* FUNC8 (struct vport_parms const*) ; 
 int /*<<< orphan*/  FUNC9 (struct vport*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 struct vport* FUNC11 (struct vport_parms const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

struct vport *FUNC13(const struct vport_parms *parms)
{
	struct vport_ops *ops;
	struct vport *vport;

	ops = FUNC8(parms);
	if (ops) {
		struct hlist_head *bucket;

		if (!FUNC12(ops->owner))
			return FUNC0(-EAFNOSUPPORT);

		vport = ops->create(parms);
		if (FUNC1(vport)) {
			FUNC4(ops->owner);
			return vport;
		}

		bucket = FUNC2(FUNC5(vport->dp),
				     FUNC9(vport));
		FUNC3(&vport->hash_node, bucket);
		return vport;
	}

	/* Unlock to attempt module load and return -EAGAIN if load
	 * was successful as we need to restart the port addition
	 * workflow.
	 */
	FUNC7();
	FUNC10("vport-type-%d", parms->type);
	FUNC6();

	if (!FUNC8(parms))
		return FUNC0(-EAFNOSUPPORT);
	else
		return FUNC0(-EAGAIN);
}