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
struct snd_dice {scalar_t__ substreams_counter; scalar_t__** tx_pcm_chs; scalar_t__** rx_pcm_chs; int /*<<< orphan*/  domain; int /*<<< orphan*/ * rx_stream; int /*<<< orphan*/ * tx_stream; TYPE_3__* unit; TYPE_4__* rx_resources; TYPE_4__* tx_resources; } ;
struct reg_params {unsigned int count; } ;
typedef  enum snd_dice_rate_mode { ____Placeholder_snd_dice_rate_mode } snd_dice_rate_mode ;
struct TYPE_8__ {unsigned int generation; } ;
struct TYPE_7__ {int /*<<< orphan*/  device; } ;
struct TYPE_6__ {TYPE_1__* card; } ;
struct TYPE_5__ {unsigned int generation; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDTP_IN_STREAM ; 
 int /*<<< orphan*/  AMDTP_OUT_STREAM ; 
 int /*<<< orphan*/  CALLBACK_TIMEOUT ; 
 int EIO ; 
 int ETIMEDOUT ; 
 unsigned int MAX_STREAMS ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_dice*,struct reg_params*,struct reg_params*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 TYPE_2__* FUNC8 (TYPE_3__*) ; 
 int FUNC9 (struct snd_dice*,struct reg_params*,struct reg_params*) ; 
 int FUNC10 (struct snd_dice*,unsigned int,int*) ; 
 int FUNC11 (struct snd_dice*,unsigned int*) ; 
 int FUNC12 (struct snd_dice*) ; 
 int FUNC13 (struct snd_dice*,int /*<<< orphan*/ ,unsigned int,struct reg_params*) ; 

int FUNC14(struct snd_dice *dice)
{
	unsigned int generation = dice->rx_resources[0].generation;
	struct reg_params tx_params, rx_params;
	unsigned int i;
	unsigned int rate;
	enum snd_dice_rate_mode mode;
	int err;

	if (dice->substreams_counter == 0)
		return -EIO;

	err = FUNC9(dice, &tx_params, &rx_params);
	if (err < 0)
		return err;

	// Check error of packet streaming.
	for (i = 0; i < MAX_STREAMS; ++i) {
		if (FUNC4(&dice->tx_stream[i]) ||
		    FUNC4(&dice->rx_stream[i])) {
			FUNC1(&dice->domain);
			FUNC6(dice, &tx_params, &rx_params);
			break;
		}
	}

	if (generation != FUNC8(dice->unit)->card->generation) {
		for (i = 0; i < MAX_STREAMS; ++i) {
			if (i < tx_params.count)
				FUNC7(dice->tx_resources + i);
			if (i < rx_params.count)
				FUNC7(dice->rx_resources + i);
		}
	}

	// Check required streams are running or not.
	err = FUNC11(dice, &rate);
	if (err < 0)
		return err;
	err = FUNC10(dice, rate, &mode);
	if (err < 0)
		return err;
	for (i = 0; i < MAX_STREAMS; ++i) {
		if (dice->tx_pcm_chs[i][mode] > 0 &&
		    !FUNC2(&dice->tx_stream[i]))
			break;
		if (dice->rx_pcm_chs[i][mode] > 0 &&
		    !FUNC2(&dice->rx_stream[i]))
			break;
	}
	if (i < MAX_STREAMS) {
		// Start both streams.
		err = FUNC13(dice, AMDTP_IN_STREAM, rate, &tx_params);
		if (err < 0)
			goto error;

		err = FUNC13(dice, AMDTP_OUT_STREAM, rate, &rx_params);
		if (err < 0)
			goto error;

		err = FUNC12(dice);
		if (err < 0) {
			FUNC5(&dice->unit->device,
				"fail to enable interface\n");
			goto error;
		}

		err = FUNC0(&dice->domain);
		if (err < 0)
			goto error;

		for (i = 0; i < MAX_STREAMS; i++) {
			if ((i < tx_params.count &&
			    !FUNC3(&dice->tx_stream[i],
							CALLBACK_TIMEOUT)) ||
			    (i < rx_params.count &&
			     !FUNC3(&dice->rx_stream[i],
							 CALLBACK_TIMEOUT))) {
				err = -ETIMEDOUT;
				goto error;
			}
		}
	}

	return 0;
error:
	FUNC1(&dice->domain);
	FUNC6(dice, &tx_params, &rx_params);
	return err;
}