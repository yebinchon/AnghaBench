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
typedef  scalar_t__ u8 ;
struct nfc_llcp_local {int /*<<< orphan*/  sdp_lock; int /*<<< orphan*/  local_sap; } ;

/* Variables and functions */
 scalar_t__ LLCP_LOCAL_NUM_SAP ; 
 scalar_t__ LLCP_LOCAL_SAP_OFFSET ; 
 scalar_t__ LLCP_SAP_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *) ; 

u8 FUNC4(struct nfc_llcp_local *local)
{
	u8 local_ssap;

	FUNC1(&local->sdp_lock);

	local_ssap = FUNC0(&local->local_sap, LLCP_LOCAL_NUM_SAP);
	if (local_ssap == LLCP_LOCAL_NUM_SAP) {
		FUNC2(&local->sdp_lock);
		return LLCP_SAP_MAX;
	}

	FUNC3(local_ssap, &local->local_sap);

	FUNC2(&local->sdp_lock);

	return local_ssap + LLCP_LOCAL_SAP_OFFSET;
}