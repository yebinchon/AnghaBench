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
struct snd_bebob {scalar_t__ substreams_counter; int /*<<< orphan*/  out_conn; int /*<<< orphan*/  rx_stream; int /*<<< orphan*/  tx_stream; TYPE_3__* unit; TYPE_2__* spec; int /*<<< orphan*/  in_conn; int /*<<< orphan*/  domain; } ;
struct TYPE_6__ {int /*<<< orphan*/  device; } ;
struct TYPE_5__ {TYPE_1__* rate; } ;
struct TYPE_4__ {int (* get ) (struct snd_bebob*,unsigned int*) ;int (* set ) (struct snd_bebob*,unsigned int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_bebob*) ; 
 int FUNC2 (struct snd_bebob*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC5 (unsigned int,unsigned int*) ; 
 int FUNC6 (struct snd_bebob*,int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 int FUNC7 (struct snd_bebob*,unsigned int*) ; 
 int FUNC8 (struct snd_bebob*,unsigned int) ; 

int FUNC9(struct snd_bebob *bebob, unsigned int rate)
{
	unsigned int curr_rate;
	int err;

	// Considering JACK/FFADO streaming:
	// TODO: This can be removed hwdep functionality becomes popular.
	err = FUNC2(bebob, &bebob->rx_stream);
	if (err < 0)
		return err;

	err = bebob->spec->rate->get(bebob, &curr_rate);
	if (err < 0)
		return err;
	if (rate == 0)
		rate = curr_rate;
	if (curr_rate != rate) {
		FUNC0(&bebob->domain);
		FUNC1(bebob);

		FUNC3(&bebob->out_conn);
		FUNC3(&bebob->in_conn);
	}

	if (bebob->substreams_counter == 0 || curr_rate != rate) {
		unsigned int index;

		// NOTE:
		// If establishing connections at first, Yamaha GO46
		// (and maybe Terratec X24) don't generate sound.
		//
		// For firmware customized by M-Audio, refer to next NOTE.
		err = bebob->spec->rate->set(bebob, rate);
		if (err < 0) {
			FUNC4(&bebob->unit->device,
				"fail to set sampling rate: %d\n",
				err);
			return err;
		}

		err = FUNC5(rate, &index);
		if (err < 0)
			return err;

		err = FUNC6(bebob, &bebob->tx_stream, rate, index);
		if (err < 0)
			return err;

		err = FUNC6(bebob, &bebob->rx_stream, rate, index);
		if (err < 0) {
			FUNC3(&bebob->out_conn);
			return err;
		}
	}

	return 0;
}