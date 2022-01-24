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
typedef  int u32 ;
struct range_trans {void* target_class; void* target_type; void* source_type; } ;
struct policydb {scalar_t__ policyvers; int /*<<< orphan*/  range_tr; void* process_class; } ;
struct mls_range {void* target_class; void* target_type; void* source_type; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ POLICYDB_VERSION_MLS ; 
 scalar_t__ POLICYDB_VERSION_RANGETRANS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct range_trans*,struct range_trans*) ; 
 int /*<<< orphan*/  FUNC2 (struct range_trans*) ; 
 struct range_trans* FUNC3 (int,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct policydb*,struct range_trans*) ; 
 int FUNC6 (struct range_trans*,void*) ; 
 int FUNC7 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct policydb*,void*) ; 
 int /*<<< orphan*/  FUNC9 (struct policydb*,void*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static int FUNC11(struct policydb *p, void *fp)
{
	struct range_trans *rt = NULL;
	struct mls_range *r = NULL;
	int i, rc;
	__le32 buf[2];
	u32 nel;

	if (p->policyvers < POLICYDB_VERSION_MLS)
		return 0;

	rc = FUNC7(buf, fp, sizeof(u32));
	if (rc)
		return rc;

	nel = FUNC4(buf[0]);
	for (i = 0; i < nel; i++) {
		rc = -ENOMEM;
		rt = FUNC3(sizeof(*rt), GFP_KERNEL);
		if (!rt)
			goto out;

		rc = FUNC7(buf, fp, (sizeof(u32) * 2));
		if (rc)
			goto out;

		rt->source_type = FUNC4(buf[0]);
		rt->target_type = FUNC4(buf[1]);
		if (p->policyvers >= POLICYDB_VERSION_RANGETRANS) {
			rc = FUNC7(buf, fp, sizeof(u32));
			if (rc)
				goto out;
			rt->target_class = FUNC4(buf[0]);
		} else
			rt->target_class = p->process_class;

		rc = -EINVAL;
		if (!FUNC9(p, rt->source_type) ||
		    !FUNC9(p, rt->target_type) ||
		    !FUNC8(p, rt->target_class))
			goto out;

		rc = -ENOMEM;
		r = FUNC3(sizeof(*r), GFP_KERNEL);
		if (!r)
			goto out;

		rc = FUNC6(r, fp);
		if (rc)
			goto out;

		rc = -EINVAL;
		if (!FUNC5(p, r)) {
			FUNC10("SELinux:  rangetrans:  invalid range\n");
			goto out;
		}

		rc = FUNC1(p->range_tr, rt, r);
		if (rc)
			goto out;

		rt = NULL;
		r = NULL;
	}
	FUNC0(p->range_tr, "rangetr");
	rc = 0;
out:
	FUNC2(rt);
	FUNC2(r);
	return rc;
}