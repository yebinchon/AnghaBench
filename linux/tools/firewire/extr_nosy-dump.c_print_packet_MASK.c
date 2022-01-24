#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_10__ {int phy_id; int gap_count; size_t phy_speed; int /*<<< orphan*/  contender; int /*<<< orphan*/  link_active; int /*<<< orphan*/  initiated_reset; int /*<<< orphan*/  extended; } ;
struct TYPE_9__ {int phy_id; int sequence; } ;
struct TYPE_8__ {int phy_id; } ;
struct TYPE_7__ {int root_id; int gap_count; int /*<<< orphan*/  set_gap_count; int /*<<< orphan*/  set_root; } ;
struct TYPE_6__ {int identifier; } ;
struct phy_packet {TYPE_5__ self_id; TYPE_4__ ext_self_id; TYPE_3__ link_on; TYPE_2__ phy_config; TYPE_1__ common; } ;
struct link_packet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PACKET_FIELD_DETAIL ; 
#define  PHY_PACKET_CONFIGURATION 130 
#define  PHY_PACKET_LINK_ON 129 
#define  PHY_PACKET_SELF_ID 128 
 int /*<<< orphan*/  FUNC0 (struct link_packet*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,size_t) ; 
 scalar_t__ option_hex ; 
 scalar_t__ option_verbose ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void
FUNC3(uint32_t *data, size_t length)
{
	int i;

	FUNC2("%6u  ", data[0]);

	if (length == 4) {
		FUNC2("bus reset");
	} else if (length < sizeof(struct phy_packet)) {
		FUNC2("short packet: ");
		for (i = 1; i < length / 4; i++)
			FUNC2("%s%08x", i == 0 ? "[" : " ", data[i]);
		FUNC2("]");

	} else if (length == sizeof(struct phy_packet) && data[1] == ~data[2]) {
		struct phy_packet *pp = (struct phy_packet *) data;

		/* phy packet are 3 quadlets: the 1 quadlet payload,
		 * the bitwise inverse of the payload and the snoop
		 * mode ack */

		switch (pp->common.identifier) {
		case PHY_PACKET_CONFIGURATION:
			if (!pp->phy_config.set_root && !pp->phy_config.set_gap_count) {
				FUNC2("ext phy config: phy_id=%02x", pp->phy_config.root_id);
			} else {
				FUNC2("phy config:");
				if (pp->phy_config.set_root)
					FUNC2(" set_root_id=%02x", pp->phy_config.root_id);
				if (pp->phy_config.set_gap_count)
					FUNC2(" set_gap_count=%d", pp->phy_config.gap_count);
			}
			break;

		case PHY_PACKET_LINK_ON:
			FUNC2("link-on packet, phy_id=%02x", pp->link_on.phy_id);
			break;

		case PHY_PACKET_SELF_ID:
			if (pp->self_id.extended) {
				FUNC2("extended self id: phy_id=%02x, seq=%d",
				       pp->ext_self_id.phy_id, pp->ext_self_id.sequence);
			} else {
				static const char * const speed_names[] = {
					"S100", "S200", "S400", "BETA"
				};
				FUNC2("self id: phy_id=%02x, link %s, gap_count=%d, speed=%s%s%s",
				       pp->self_id.phy_id,
				       (pp->self_id.link_active ? "active" : "not active"),
				       pp->self_id.gap_count,
				       speed_names[pp->self_id.phy_speed],
				       (pp->self_id.contender ? ", irm contender" : ""),
				       (pp->self_id.initiated_reset ? ", initiator" : ""));
			}
			break;
		default:
			FUNC2("unknown phy packet: ");
			for (i = 1; i < length / 4; i++)
				FUNC2("%s%08x", i == 0 ? "[" : " ", data[i]);
			FUNC2("]");
			break;
		}
	} else {
		struct link_packet *packet = (struct link_packet *) data;

		FUNC0(packet, length, 0,
				   option_verbose ? 0 : PACKET_FIELD_DETAIL);
	}

	if (option_hex) {
		FUNC2("  [");
		FUNC1((unsigned char *) data + 4, length - 4);
		FUNC2("]");
	}

	FUNC2("\r\n");
}