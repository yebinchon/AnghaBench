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
struct ncsi_request {int used; unsigned int flags; } ;
struct ncsi_dev_priv {int request_id; int /*<<< orphan*/  lock; struct ncsi_request* requests; } ;

/* Variables and functions */
 int FUNC0 (struct ncsi_request*) ; 
 int NCSI_REQ_START_IDX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

struct ncsi_request *FUNC3(struct ncsi_dev_priv *ndp,
					unsigned int req_flags)
{
	struct ncsi_request *nr = NULL;
	int i, limit = FUNC0(ndp->requests);
	unsigned long flags;

	/* Check if there is one available request until the ceiling */
	FUNC1(&ndp->lock, flags);
	for (i = ndp->request_id; i < limit; i++) {
		if (ndp->requests[i].used)
			continue;

		nr = &ndp->requests[i];
		nr->used = true;
		nr->flags = req_flags;
		ndp->request_id = i + 1;
		goto found;
	}

	/* Fail back to check from the starting cursor */
	for (i = NCSI_REQ_START_IDX; i < ndp->request_id; i++) {
		if (ndp->requests[i].used)
			continue;

		nr = &ndp->requests[i];
		nr->used = true;
		nr->flags = req_flags;
		ndp->request_id = i + 1;
		goto found;
	}

found:
	FUNC2(&ndp->lock, flags);
	return nr;
}