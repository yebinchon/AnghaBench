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
struct nfc_llcp_sock {int /*<<< orphan*/  ssap; } ;
struct nfc_llcp_local {unsigned long local_wks; unsigned long local_sdp; unsigned long local_sap; int /*<<< orphan*/  sdp_lock; int /*<<< orphan*/ * local_sdp_cnt; } ;
typedef  int /*<<< orphan*/  atomic_t ;

/* Variables and functions */
 scalar_t__ LLCP_LOCAL_NUM_SAP ; 
 scalar_t__ LLCP_MAX_SAP ; 
 int /*<<< orphan*/  LLCP_SAP_SDP ; 
 int /*<<< orphan*/  LLCP_SDP_UNBOUND ; 
 scalar_t__ LLCP_WKS_NUM_SAP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct nfc_llcp_sock* FUNC5 (struct nfc_llcp_local*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nfc_llcp_sock*) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__) ; 

void FUNC8(struct nfc_llcp_local *local, u8 ssap)
{
	u8 local_ssap;
	unsigned long *sdp;

	if (ssap < LLCP_WKS_NUM_SAP) {
		local_ssap = ssap;
		sdp = &local->local_wks;
	} else if (ssap < LLCP_LOCAL_NUM_SAP) {
		atomic_t *client_cnt;

		local_ssap = ssap - LLCP_WKS_NUM_SAP;
		sdp = &local->local_sdp;
		client_cnt = &local->local_sdp_cnt[local_ssap];

		FUNC7("%d clients\n", FUNC1(client_cnt));

		FUNC3(&local->sdp_lock);

		if (FUNC0(client_cnt)) {
			struct nfc_llcp_sock *l_sock;

			FUNC7("No more clients for SAP %d\n", ssap);

			FUNC2(local_ssap, sdp);

			/* Find the listening sock and set it back to UNBOUND */
			l_sock = FUNC5(local, ssap, LLCP_SAP_SDP);
			if (l_sock) {
				l_sock->ssap = LLCP_SDP_UNBOUND;
				FUNC6(l_sock);
			}
		}

		FUNC4(&local->sdp_lock);

		return;
	} else if (ssap < LLCP_MAX_SAP) {
		local_ssap = ssap - LLCP_LOCAL_NUM_SAP;
		sdp = &local->local_sap;
	} else {
		return;
	}

	FUNC3(&local->sdp_lock);

	FUNC2(local_ssap, sdp);

	FUNC4(&local->sdp_lock);
}