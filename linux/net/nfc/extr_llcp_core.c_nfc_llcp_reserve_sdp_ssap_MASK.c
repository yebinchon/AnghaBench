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
struct nfc_llcp_local {int /*<<< orphan*/  sdp_lock; int /*<<< orphan*/  local_sdp; } ;

/* Variables and functions */
 scalar_t__ LLCP_SAP_MAX ; 
 scalar_t__ LLCP_SDP_NUM_SAP ; 
 scalar_t__ LLCP_WKS_NUM_SAP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static u8 FUNC5(struct nfc_llcp_local *local)
{
	u8 ssap;

	FUNC1(&local->sdp_lock);

	ssap = FUNC0(&local->local_sdp, LLCP_SDP_NUM_SAP);
	if (ssap == LLCP_SDP_NUM_SAP) {
		FUNC2(&local->sdp_lock);

		return LLCP_SAP_MAX;
	}

	FUNC3("SDP ssap %d\n", LLCP_WKS_NUM_SAP + ssap);

	FUNC4(ssap, &local->local_sdp);

	FUNC2(&local->sdp_lock);

	return LLCP_WKS_NUM_SAP + ssap;
}