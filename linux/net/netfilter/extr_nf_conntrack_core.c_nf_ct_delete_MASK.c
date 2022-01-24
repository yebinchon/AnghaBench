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
typedef  int /*<<< orphan*/  u32 ;
struct nf_conn_tstamp {scalar_t__ stop; } ;
struct nf_conn {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPCT_DESTROY ; 
 int /*<<< orphan*/  IPS_DYING_BIT ; 
 scalar_t__ FUNC0 () ; 
 struct nf_conn_tstamp* FUNC1 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct nf_conn*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC6 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC7 (struct nf_conn*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

bool FUNC9(struct nf_conn *ct, u32 portid, int report)
{
	struct nf_conn_tstamp *tstamp;

	if (FUNC8(IPS_DYING_BIT, &ct->status))
		return false;

	tstamp = FUNC1(ct);
	if (tstamp && tstamp->stop == 0)
		tstamp->stop = FUNC0();

	if (FUNC4(IPCT_DESTROY, ct,
				    portid, report) < 0) {
		/* destroy event was not delivered. nf_ct_put will
		 * be done by event cache worker on redelivery.
		 */
		FUNC5(ct);
		FUNC2(FUNC6(ct));
		return false;
	}

	FUNC3(FUNC6(ct));
	FUNC5(ct);
	FUNC7(ct);
	return true;
}