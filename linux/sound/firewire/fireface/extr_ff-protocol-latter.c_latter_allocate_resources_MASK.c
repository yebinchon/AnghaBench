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
typedef  enum snd_ff_clock_src { ____Placeholder_snd_ff_clock_src } snd_ff_clock_src ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_4__ {int /*<<< orphan*/  max_speed; } ;

/* Variables and functions */
 int FUNC0 (unsigned int*) ; 
 int EINVAL ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  LATTER_STF ; 
 int /*<<< orphan*/  TCODE_WRITE_QUADLET_REQUEST ; 
 unsigned int* amdtp_rate_table ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct snd_ff*,unsigned int*,int*) ; 
 int FUNC7 (int,int*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct snd_ff *ff, unsigned int rate)
{
	enum snd_ff_stream_mode mode;
	unsigned int code;
	__le32 reg;
	unsigned int count;
	int i;
	int err;

	// Set the number of data blocks transferred in a second.
	if (rate % 32000 == 0)
		code = 0x00;
	else if (rate % 44100 == 0)
		code = 0x02;
	else if (rate % 48000 == 0)
		code = 0x04;
	else
		return -EINVAL;

	if (rate >= 64000 && rate < 128000)
		code |= 0x08;
	else if (rate >= 128000 && rate < 192000)
		code |= 0x10;

	reg = FUNC2(code);
	err = FUNC8(ff->unit, TCODE_WRITE_QUADLET_REQUEST,
				 LATTER_STF, &reg, sizeof(reg), 0);
	if (err < 0)
		return err;

	// Confirm to shift transmission clock.
	count = 0;
	while (count++ < 10) {
		unsigned int curr_rate;
		enum snd_ff_clock_src src;

		err = FUNC6(ff, &curr_rate, &src);
		if (err < 0)
			return err;

		if (curr_rate == rate)
			break;
	}
	if (count == 10)
		return -ETIMEDOUT;

	for (i = 0; i < FUNC0(amdtp_rate_table); ++i) {
		if (rate == amdtp_rate_table[i])
			break;
	}
	if (i == FUNC0(amdtp_rate_table))
		return -EINVAL;

	err = FUNC7(i, &mode);
	if (err < 0)
		return err;

	// Keep resources for in-stream.
	ff->tx_resources.channels_mask = 0x00000000000000ffuLL;
	err = FUNC3(&ff->tx_resources,
			FUNC1(&ff->tx_stream),
			FUNC5(ff->unit)->max_speed);
	if (err < 0)
		return err;

	// Keep resources for out-stream.
	ff->rx_resources.channels_mask = 0x00000000000000ffuLL;
	err = FUNC3(&ff->rx_resources,
			FUNC1(&ff->rx_stream),
			FUNC5(ff->unit)->max_speed);
	if (err < 0)
		FUNC4(&ff->tx_resources);

	return err;
}