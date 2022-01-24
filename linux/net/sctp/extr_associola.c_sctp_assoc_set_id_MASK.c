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
struct sctp_association {scalar_t__ assoc_id; } ;
typedef  scalar_t__ sctp_assoc_t ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOWAIT ; 
 scalar_t__ SCTP_ALL_ASSOC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct sctp_association*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  sctp_assocs_id ; 
 int /*<<< orphan*/  sctp_assocs_id_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct sctp_association *asoc, gfp_t gfp)
{
	bool preload = FUNC0(gfp);
	int ret;

	/* If the id is already assigned, keep it. */
	if (asoc->assoc_id)
		return 0;

	if (preload)
		FUNC2(gfp);
	FUNC4(&sctp_assocs_id_lock);
	/* 0, 1, 2 are used as SCTP_FUTURE_ASSOC, SCTP_CURRENT_ASSOC and
	 * SCTP_ALL_ASSOC, so an available id must be > SCTP_ALL_ASSOC.
	 */
	ret = FUNC1(&sctp_assocs_id, asoc, SCTP_ALL_ASSOC + 1, 0,
			       GFP_NOWAIT);
	FUNC5(&sctp_assocs_id_lock);
	if (preload)
		FUNC3();
	if (ret < 0)
		return ret;

	asoc->assoc_id = (sctp_assoc_t)ret;
	return 0;
}