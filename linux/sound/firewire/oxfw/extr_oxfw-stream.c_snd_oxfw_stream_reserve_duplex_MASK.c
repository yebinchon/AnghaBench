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
struct snd_oxfw_stream_formation {unsigned int rate; unsigned int pcm; } ;
struct amdtp_stream {int dummy; } ;
struct snd_oxfw {scalar_t__ substreams_count; int /*<<< orphan*/  in_conn; struct amdtp_stream tx_stream; scalar_t__ has_output; struct amdtp_stream rx_stream; TYPE_1__* unit; int /*<<< orphan*/  out_conn; int /*<<< orphan*/  domain; } ;
typedef  enum avc_general_plug_dir { ____Placeholder_avc_general_plug_dir } avc_general_plug_dir ;
struct TYPE_2__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int AVC_GENERAL_PLUG_DIR_IN ; 
 int AVC_GENERAL_PLUG_DIR_OUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct snd_oxfw*,struct amdtp_stream*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC5 (struct snd_oxfw*,struct amdtp_stream*) ; 
 int FUNC6 (struct snd_oxfw*,struct amdtp_stream*,unsigned int,unsigned int) ; 
 int FUNC7 (struct snd_oxfw*,int,struct snd_oxfw_stream_formation*) ; 

int FUNC8(struct snd_oxfw *oxfw,
				   struct amdtp_stream *stream,
				   unsigned int rate, unsigned int pcm_channels)
{
	struct snd_oxfw_stream_formation formation;
	enum avc_general_plug_dir dir;
	int err;

	// Considering JACK/FFADO streaming:
	// TODO: This can be removed hwdep functionality becomes popular.
	err = FUNC1(oxfw, &oxfw->rx_stream);
	if (err < 0)
		return err;
	if (oxfw->has_output) {
		err = FUNC1(oxfw, &oxfw->tx_stream);
		if (err < 0)
			return err;
	}

	if (stream == &oxfw->tx_stream)
		dir = AVC_GENERAL_PLUG_DIR_OUT;
	else
		dir = AVC_GENERAL_PLUG_DIR_IN;

	err = FUNC7(oxfw, dir, &formation);
	if (err < 0)
		return err;
	if (rate == 0) {
		rate = formation.rate;
		pcm_channels = formation.pcm;
	}
	if (formation.rate != rate || formation.pcm != pcm_channels) {
		FUNC0(&oxfw->domain);

		FUNC2(&oxfw->in_conn);
		FUNC3(&oxfw->in_conn);

		if (oxfw->has_output) {
			FUNC2(&oxfw->out_conn);
			FUNC3(&oxfw->out_conn);
		}
	}

	if (oxfw->substreams_count == 0 ||
	    formation.rate != rate || formation.pcm != pcm_channels) {
		err = FUNC6(oxfw, stream, rate, pcm_channels);
		if (err < 0) {
			FUNC4(&oxfw->unit->device,
				"fail to set stream format: %d\n", err);
			return err;
		}

		err = FUNC5(oxfw, &oxfw->rx_stream);
		if (err < 0)
			return err;

		if (oxfw->has_output) {
			err = FUNC5(oxfw, &oxfw->tx_stream);
			if (err < 0) {
				FUNC3(&oxfw->in_conn);
				return err;
			}
		}
	}

	return 0;
}