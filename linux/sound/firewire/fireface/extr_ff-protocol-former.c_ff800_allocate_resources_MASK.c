#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_5__ {int channel; } ;
struct TYPE_6__ {int data_block_quadlets; } ;
struct snd_ff {int /*<<< orphan*/  unit; TYPE_2__ rx_resources; TYPE_3__ rx_stream; } ;
typedef  int /*<<< orphan*/  reg ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_4__ {int /*<<< orphan*/  max_speed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FF800_RX_PACKET_FORMAT ; 
 int /*<<< orphan*/  FF800_STF ; 
 int /*<<< orphan*/  TCODE_WRITE_QUADLET_REQUEST ; 
 int FUNC0 (struct snd_ff*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct snd_ff *ff, unsigned int rate)
{
	u32 data;
	__le32 reg;
	int err;

	reg = FUNC2(rate);
	err = FUNC6(ff->unit, TCODE_WRITE_QUADLET_REQUEST,
				 FF800_STF, &reg, sizeof(reg), 0);
	if (err < 0)
		return err;

	// If starting isochronous communication immediately, change of STF has
	// no effect. In this case, the communication runs based on former STF.
	// Let's sleep for a bit.
	FUNC5(100);

	// Controllers should allocate isochronous resources for rx stream.
	err = FUNC3(&ff->rx_resources,
				FUNC1(&ff->rx_stream),
				FUNC4(ff->unit)->max_speed);
	if (err < 0)
		return err;

	// Set isochronous channel and the number of quadlets of rx packets.
	// This should be done before the allocation of tx resources to avoid
	// periodical noise.
	data = ff->rx_stream.data_block_quadlets << 3;
	data = (data << 8) | ff->rx_resources.channel;
	reg = FUNC2(data);
	err = FUNC6(ff->unit, TCODE_WRITE_QUADLET_REQUEST,
				 FF800_RX_PACKET_FORMAT, &reg, sizeof(reg), 0);
	if (err < 0)
		return err;

	return FUNC0(ff);
}