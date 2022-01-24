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
struct fw_iso_resources {int dummy; } ;
struct amdtp_stream {int dummy; } ;
struct snd_dg00x {int /*<<< orphan*/  unit; struct fw_iso_resources rx_resources; struct fw_iso_resources tx_resources; struct amdtp_stream tx_stream; } ;
struct TYPE_2__ {int /*<<< orphan*/  max_speed; } ;

/* Variables and functions */
 int EINVAL ; 
 int SND_DG00X_RATE_COUNT ; 
 int FUNC0 (struct amdtp_stream*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct amdtp_stream*) ; 
 int FUNC2 (struct fw_iso_resources*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * snd_dg00x_stream_pcm_channels ; 
 unsigned int* snd_dg00x_stream_rates ; 

__attribute__((used)) static int FUNC4(struct snd_dg00x *dg00x, struct amdtp_stream *stream,
			  unsigned int rate)
{
	struct fw_iso_resources *resources;
	int i;
	int err;

	// Check sampling rate.
	for (i = 0; i < SND_DG00X_RATE_COUNT; i++) {
		if (snd_dg00x_stream_rates[i] == rate)
			break;
	}
	if (i == SND_DG00X_RATE_COUNT)
		return -EINVAL;

	if (stream == &dg00x->tx_stream)
		resources = &dg00x->tx_resources;
	else
		resources = &dg00x->rx_resources;

	err = FUNC0(stream, rate,
				       snd_dg00x_stream_pcm_channels[i]);
	if (err < 0)
		return err;

	return FUNC2(resources,
				FUNC1(stream),
				FUNC3(dg00x->unit)->max_speed);
}