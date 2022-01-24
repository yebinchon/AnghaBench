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
struct dlm_query_region {int qr_node; int qr_numregions; char* qr_regions; int /*<<< orphan*/  qr_namelen; int /*<<< orphan*/  qr_domain; } ;
struct dlm_ctxt {int node_num; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_MOD_KEY ; 
 int /*<<< orphan*/  DLM_QUERY_REGION ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  O2HB_MAX_REGION_NAME_LEN ; 
 int O2NM_MAX_NODES ; 
 int /*<<< orphan*/  O2NM_MAX_REGIONS ; 
 int FUNC0 (unsigned long*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_query_region*) ; 
 struct dlm_query_region* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 () ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dlm_query_region*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct dlm_ctxt *dlm, unsigned long *node_map)
{
	struct dlm_query_region *qr = NULL;
	int status, ret = 0, i;
	char *p;

	if (FUNC0(node_map, O2NM_MAX_NODES, 0) >= O2NM_MAX_NODES)
		goto bail;

	qr = FUNC2(sizeof(struct dlm_query_region), GFP_KERNEL);
	if (!qr) {
		ret = -ENOMEM;
		FUNC5(ret);
		goto bail;
	}

	qr->qr_node = dlm->node_num;
	qr->qr_namelen = FUNC9(dlm->name);
	FUNC3(qr->qr_domain, dlm->name, qr->qr_namelen);
	/* if local hb, the numregions will be zero */
	if (FUNC7())
		qr->qr_numregions = FUNC6(qr->qr_regions,
							 O2NM_MAX_REGIONS);

	p = qr->qr_regions;
	for (i = 0; i < qr->qr_numregions; ++i, p += O2HB_MAX_REGION_NAME_LEN)
		FUNC4(0, "Region %.*s\n", O2HB_MAX_REGION_NAME_LEN, p);

	i = -1;
	while ((i = FUNC0(node_map, O2NM_MAX_NODES,
				  i + 1)) < O2NM_MAX_NODES) {
		if (i == dlm->node_num)
			continue;

		FUNC4(0, "Sending regions to node %d\n", i);

		ret = FUNC8(DLM_QUERY_REGION, DLM_MOD_KEY, qr,
					 sizeof(struct dlm_query_region),
					 i, &status);
		if (ret >= 0)
			ret = status;
		if (ret) {
			FUNC4(ML_ERROR, "Region mismatch %d, node %d\n",
			     ret, i);
			break;
		}
	}

bail:
	FUNC1(qr);
	return ret;
}