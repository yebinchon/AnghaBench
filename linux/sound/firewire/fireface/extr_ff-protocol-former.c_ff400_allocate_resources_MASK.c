#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int channels_mask; } ;
struct snd_ff {TYPE_2__ tx_resources; int /*<<< orphan*/  unit; int /*<<< orphan*/  rx_stream; TYPE_2__ rx_resources; int /*<<< orphan*/  tx_stream; } ;
typedef  int /*<<< orphan*/  reg ;
typedef  enum snd_ff_stream_mode { ____Placeholder_snd_ff_stream_mode } snd_ff_stream_mode ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_4__ {int /*<<< orphan*/  max_speed; } ;

/* Variables and functions */
 int CIP_SFC_COUNT ; 
 int EINVAL ; 
 int /*<<< orphan*/  FF400_STF ; 
 int /*<<< orphan*/  TCODE_WRITE_QUADLET_REQUEST ; 
 unsigned int* amdtp_rate_table ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int,int*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct snd_ff *ff, unsigned int rate)
{
	__le32 reg;
	enum snd_ff_stream_mode mode;
	int i;
	int err;

	// Check whether the given value is supported or not.
	for (i = 0; i < CIP_SFC_COUNT; i++) {
		if (amdtp_rate_table[i] == rate)
			break;
	}
	if (i >= CIP_SFC_COUNT)
		return -EINVAL;

	// Set the number of data blocks transferred in a second.
	reg = FUNC1(rate);
	err = FUNC7(ff->unit, TCODE_WRITE_QUADLET_REQUEST,
				 FF400_STF, &reg, sizeof(reg), 0);
	if (err < 0)
		return err;

	FUNC5(100);

	err = FUNC6(i, &mode);
	if (err < 0)
		return err;

	// Keep resources for in-stream.
	ff->tx_resources.channels_mask = 0x00000000000000ffuLL;
	err = FUNC2(&ff->tx_resources,
			FUNC0(&ff->tx_stream),
			FUNC4(ff->unit)->max_speed);
	if (err < 0)
		return err;

	// Keep resources for out-stream.
	ff->rx_resources.channels_mask = 0x00000000000000ffuLL;
	err = FUNC2(&ff->rx_resources,
			FUNC0(&ff->rx_stream),
			FUNC4(ff->unit)->max_speed);
	if (err < 0)
		FUNC3(&ff->tx_resources);

	return err;
}