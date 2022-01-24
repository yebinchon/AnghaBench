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
typedef  int uint8_t ;
struct mpoa_client {int number_of_mps_macs; int /*<<< orphan*/ * mps_macs; TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MPS_AND_MPC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const uint8_t *FUNC5(struct mpoa_client *mpc,
				const uint8_t *router_mac,
				const uint8_t *tlvs, uint8_t mps_macs,
				uint8_t device_type)
{
	int num_macs;
	num_macs = (mps_macs > 1) ? mps_macs : 1;

	if (mpc->number_of_mps_macs != num_macs) { /* need to reallocate? */
		if (mpc->number_of_mps_macs != 0)
			FUNC1(mpc->mps_macs);
		mpc->number_of_mps_macs = 0;
		mpc->mps_macs = FUNC2(ETH_ALEN, num_macs, GFP_KERNEL);
		if (mpc->mps_macs == NULL) {
			FUNC4("(%s) out of mem\n", mpc->dev->name);
			return NULL;
		}
	}
	FUNC0(mpc->mps_macs, router_mac);
	tlvs += 20; if (device_type == MPS_AND_MPC) tlvs += 20;
	if (mps_macs > 0)
		FUNC3(mpc->mps_macs, tlvs, mps_macs*ETH_ALEN);
	tlvs += mps_macs*ETH_ALEN;
	mpc->number_of_mps_macs = num_macs;

	return tlvs;
}