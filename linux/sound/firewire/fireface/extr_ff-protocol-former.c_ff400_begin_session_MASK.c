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
struct TYPE_8__ {int data_block_quadlets; } ;
struct TYPE_10__ {unsigned int generation; int channel; } ;
struct TYPE_7__ {int data_block_quadlets; } ;
struct snd_ff {int /*<<< orphan*/  unit; TYPE_3__ tx_stream; TYPE_5__ tx_resources; TYPE_5__ rx_resources; TYPE_2__ rx_stream; } ;
typedef  int /*<<< orphan*/  reg ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_9__ {TYPE_1__* card; } ;
struct TYPE_6__ {unsigned int generation; } ;

/* Variables and functions */
 int /*<<< orphan*/  FF400_ISOC_COMM_START ; 
 int /*<<< orphan*/  FF400_RX_PACKET_FORMAT ; 
 int /*<<< orphan*/  FF400_TX_PACKET_FORMAT ; 
 int /*<<< orphan*/  TCODE_WRITE_QUADLET_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_5__*) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_ff *ff, unsigned int rate)
{
	unsigned int generation = ff->rx_resources.generation;
	__le32 reg;
	int err;

	if (generation != FUNC2(ff->unit)->card->generation) {
		err = FUNC1(&ff->tx_resources);
		if (err < 0)
			return err;

		err = FUNC1(&ff->rx_resources);
		if (err < 0)
			return err;
	}

	// Set isochronous channel and the number of quadlets of received
	// packets.
	reg = FUNC0(((ff->rx_stream.data_block_quadlets << 3) << 8) |
			  ff->rx_resources.channel);
	err = FUNC3(ff->unit, TCODE_WRITE_QUADLET_REQUEST,
				 FF400_RX_PACKET_FORMAT, &reg, sizeof(reg), 0);
	if (err < 0)
		return err;

	// Set isochronous channel and the number of quadlets of transmitted
	// packet.
	// TODO: investigate the purpose of this 0x80.
	reg = FUNC0((0x80 << 24) |
			  (ff->tx_resources.channel << 5) |
			  (ff->tx_stream.data_block_quadlets));
	err = FUNC3(ff->unit, TCODE_WRITE_QUADLET_REQUEST,
				 FF400_TX_PACKET_FORMAT, &reg, sizeof(reg), 0);
	if (err < 0)
		return err;

	// Allow to transmit packets.
	reg = FUNC0(0x00000001);
	return FUNC3(ff->unit, TCODE_WRITE_QUADLET_REQUEST,
				 FF400_ISOC_COMM_START, &reg, sizeof(reg), 0);
}