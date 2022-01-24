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
struct stp_proto {size_t* group_address; } ;

/* Variables and functions */
 int ENOMEM ; 
 size_t GARP_ADDR_MIN ; 
 int /*<<< orphan*/  LLC_SAP_BSPAN ; 
 int /*<<< orphan*/ * garp_protos ; 
 scalar_t__ FUNC0 (size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct stp_proto const*) ; 
 int /*<<< orphan*/  sap ; 
 int /*<<< orphan*/  sap_registered ; 
 int /*<<< orphan*/  stp_pdu_rcv ; 
 int /*<<< orphan*/  stp_proto ; 
 int /*<<< orphan*/  stp_proto_mutex ; 

int FUNC5(const struct stp_proto *proto)
{
	int err = 0;

	FUNC2(&stp_proto_mutex);
	if (sap_registered++ == 0) {
		sap = FUNC1(LLC_SAP_BSPAN, stp_pdu_rcv);
		if (!sap) {
			err = -ENOMEM;
			goto out;
		}
	}
	if (FUNC0(proto->group_address))
		FUNC4(stp_proto, proto);
	else
		FUNC4(garp_protos[proto->group_address[5] -
					       GARP_ADDR_MIN], proto);
out:
	FUNC3(&stp_proto_mutex);
	return err;
}