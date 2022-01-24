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
struct dlm_master_list_entry {scalar_t__ type; int master; int new_master; int /*<<< orphan*/  node_map; int /*<<< orphan*/  response_map; int /*<<< orphan*/  vote_map; int /*<<< orphan*/  maybe_map; int /*<<< orphan*/  mle_refs; int /*<<< orphan*/  inuse; int /*<<< orphan*/  hb_events; int /*<<< orphan*/  mnamelen; int /*<<< orphan*/  mname; } ;

/* Variables and functions */
 scalar_t__ DLM_MLE_BLOCK ; 
 scalar_t__ DLM_MLE_MASTER ; 
 int /*<<< orphan*/  O2NM_MAX_NODES ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,int,char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC5(struct dlm_master_list_entry *mle, char *buf, int len)
{
	int out = 0;
	char *mle_type;

	if (mle->type == DLM_MLE_BLOCK)
		mle_type = "BLK";
	else if (mle->type == DLM_MLE_MASTER)
		mle_type = "MAS";
	else
		mle_type = "MIG";

	out += FUNC3(mle->mname, mle->mnamelen, buf + out, len - out);
	out += FUNC2(buf + out, len - out,
			"\t%3s\tmas=%3u\tnew=%3u\tevt=%1d\tuse=%1d\tref=%3d\n",
			mle_type, mle->master, mle->new_master,
			!FUNC1(&mle->hb_events),
			!!mle->inuse,
			FUNC0(&mle->mle_refs));

	out += FUNC2(buf + out, len - out, "Maybe=");
	out += FUNC4(mle->maybe_map, O2NM_MAX_NODES,
				 buf + out, len - out);
	out += FUNC2(buf + out, len - out, "\n");

	out += FUNC2(buf + out, len - out, "Vote=");
	out += FUNC4(mle->vote_map, O2NM_MAX_NODES,
				 buf + out, len - out);
	out += FUNC2(buf + out, len - out, "\n");

	out += FUNC2(buf + out, len - out, "Response=");
	out += FUNC4(mle->response_map, O2NM_MAX_NODES,
				 buf + out, len - out);
	out += FUNC2(buf + out, len - out, "\n");

	out += FUNC2(buf + out, len - out, "Node=");
	out += FUNC4(mle->node_map, O2NM_MAX_NODES,
				 buf + out, len - out);
	out += FUNC2(buf + out, len - out, "\n");

	out += FUNC2(buf + out, len - out, "\n");

	return out;
}