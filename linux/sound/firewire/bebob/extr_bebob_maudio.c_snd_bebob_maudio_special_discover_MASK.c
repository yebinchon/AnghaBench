#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct special_params {int is1814; } ;
struct TYPE_7__ {void* context; } ;
struct TYPE_6__ {void* context; } ;
struct snd_bebob {int midi_input_ports; int midi_output_ports; int /*<<< orphan*/  mutex; TYPE_4__* unit; TYPE_3__ tx_stream; TYPE_2__ rx_stream; void* maudio_special_quirk; TYPE_1__* card; } ;
struct TYPE_8__ {int /*<<< orphan*/  device; } ;
struct TYPE_5__ {int /*<<< orphan*/  card_dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (struct snd_bebob*) ; 
 int FUNC2 (struct snd_bebob*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 struct special_params* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_bebob*) ; 

int
FUNC8(struct snd_bebob *bebob, bool is1814)
{
	struct special_params *params;
	int err;

	params = FUNC4(&bebob->card->card_dev,
			      sizeof(struct special_params), GFP_KERNEL);
	if (!params)
		return -ENOMEM;

	FUNC5(&bebob->mutex);

	bebob->maudio_special_quirk = (void *)params;
	params->is1814 = is1814;

	/* initialize these parameters because driver is not allowed to ask */
	bebob->rx_stream.context = FUNC0(-1);
	bebob->tx_stream.context = FUNC0(-1);
	err = FUNC2(bebob, 0x03, 0x00, 0x00, 0x00);
	if (err < 0) {
		FUNC3(&bebob->unit->device,
			"fail to initialize clock params: %d\n", err);
		goto end;
	}

	err = FUNC1(bebob);
	if (err < 0)
		goto end;

	FUNC7(bebob);

	if (params->is1814) {
		bebob->midi_input_ports = 1;
		bebob->midi_output_ports = 1;
	} else {
		bebob->midi_input_ports = 2;
		bebob->midi_output_ports = 2;
	}
end:
	FUNC6(&bebob->mutex);
	return err;
}