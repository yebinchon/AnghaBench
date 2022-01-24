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
typedef  int u8 ;
struct nfc_llcp_sock {scalar_t__ service_name_len; int ssap; int /*<<< orphan*/ * service_name; } ;
struct nfc_llcp_local {int local_wks; int /*<<< orphan*/  sdp_lock; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int LLCP_SAP_MAX ; 
 int LLCP_SDP_UNBOUND ; 
 int LLCP_WKS_NUM_SAP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (struct nfc_llcp_local*,int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int*) ; 
 int /*<<< orphan*/  FUNC7 (int,int*) ; 

u8 FUNC8(struct nfc_llcp_local *local,
			 struct nfc_llcp_sock *sock)
{
	FUNC1(&local->sdp_lock);

	if (sock->service_name != NULL && sock->service_name_len > 0) {
		int ssap = FUNC4(sock->service_name,
					    sock->service_name_len);

		if (ssap > 0) {
			FUNC5("WKS %d\n", ssap);

			/* This is a WKS, let's check if it's free */
			if (local->local_wks & FUNC0(ssap)) {
				FUNC2(&local->sdp_lock);

				return LLCP_SAP_MAX;
			}

			FUNC6(ssap, &local->local_wks);
			FUNC2(&local->sdp_lock);

			return ssap;
		}

		/*
		 * Check if there already is a non WKS socket bound
		 * to this service name.
		 */
		if (FUNC3(local, sock->service_name,
					  sock->service_name_len) != NULL) {
			FUNC2(&local->sdp_lock);

			return LLCP_SAP_MAX;
		}

		FUNC2(&local->sdp_lock);

		return LLCP_SDP_UNBOUND;

	} else if (sock->ssap != 0 && sock->ssap < LLCP_WKS_NUM_SAP) {
		if (!FUNC7(sock->ssap, &local->local_wks)) {
			FUNC6(sock->ssap, &local->local_wks);
			FUNC2(&local->sdp_lock);

			return sock->ssap;
		}
	}

	FUNC2(&local->sdp_lock);

	return LLCP_SAP_MAX;
}