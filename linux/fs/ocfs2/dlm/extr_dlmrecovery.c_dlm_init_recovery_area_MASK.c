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
typedef  int u8 ;
struct dlm_reco_node_data {int node_num; int /*<<< orphan*/  list; int /*<<< orphan*/  state; } ;
struct TYPE_2__ {int /*<<< orphan*/  node_data; int /*<<< orphan*/  node_map; } ;
struct dlm_ctxt {TYPE_1__ reco; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  domain_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DLM_RECO_NODE_DATA_INIT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int O2NM_MAX_NODES ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_ctxt*) ; 
 int /*<<< orphan*/  dlm_reco_state_lock ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 struct dlm_reco_node_data* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct dlm_ctxt *dlm, u8 dead_node)
{
	int num=0;
	struct dlm_reco_node_data *ndata;

	FUNC6(&dlm->spinlock);
	FUNC5(dlm->reco.node_map, dlm->domain_map, sizeof(dlm->domain_map));
	/* nodes can only be removed (by dying) after dropping
	 * this lock, and death will be trapped later, so this should do */
	FUNC7(&dlm->spinlock);

	while (1) {
		num = FUNC2 (dlm->reco.node_map, O2NM_MAX_NODES, num);
		if (num >= O2NM_MAX_NODES) {
			break;
		}
		FUNC0(num == dead_node);

		ndata = FUNC3(sizeof(*ndata), GFP_NOFS);
		if (!ndata) {
			FUNC1(dlm);
			return -ENOMEM;
		}
		ndata->node_num = num;
		ndata->state = DLM_RECO_NODE_DATA_INIT;
		FUNC6(&dlm_reco_state_lock);
		FUNC4(&ndata->list, &dlm->reco.node_data);
		FUNC7(&dlm_reco_state_lock);
		num++;
	}

	return 0;
}