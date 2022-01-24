#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
struct snd_oxfw_stream_formation {unsigned int rate; unsigned int pcm; } ;
struct amdtp_stream {int dummy; } ;
struct snd_oxfw {int** tx_stream_formats; int** rx_stream_formats; int /*<<< orphan*/  unit; scalar_t__ assumed; struct amdtp_stream tx_stream; } ;
typedef  enum avc_general_plug_dir { ____Placeholder_avc_general_plug_dir } avc_general_plug_dir ;

/* Variables and functions */
 int AVC_GENERAL_PLUG_DIR_IN ; 
 int AVC_GENERAL_PLUG_DIR_OUT ; 
 int EINVAL ; 
 int SND_OXFW_STREAM_FORMAT_ENTRIES ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct snd_oxfw*,unsigned int) ; 
 int FUNC3 (int*,struct snd_oxfw_stream_formation*) ; 

__attribute__((used)) static int FUNC4(struct snd_oxfw *oxfw, struct amdtp_stream *s,
			     unsigned int rate, unsigned int pcm_channels)
{
	u8 **formats;
	struct snd_oxfw_stream_formation formation;
	enum avc_general_plug_dir dir;
	unsigned int len;
	int i, err;

	if (s == &oxfw->tx_stream) {
		formats = oxfw->tx_stream_formats;
		dir = AVC_GENERAL_PLUG_DIR_OUT;
	} else {
		formats = oxfw->rx_stream_formats;
		dir = AVC_GENERAL_PLUG_DIR_IN;
	}

	/* Seek stream format for requirements. */
	for (i = 0; i < SND_OXFW_STREAM_FORMAT_ENTRIES; i++) {
		err = FUNC3(formats[i], &formation);
		if (err < 0)
			return err;

		if ((formation.rate == rate) && (formation.pcm == pcm_channels))
			break;
	}
	if (i == SND_OXFW_STREAM_FORMAT_ENTRIES)
		return -EINVAL;

	/* If assumed, just change rate. */
	if (oxfw->assumed)
		return FUNC2(oxfw, rate);

	/* Calculate format length. */
	len = 5 + formats[i][4] * 2;

	err = FUNC0(oxfw->unit, dir, 0, formats[i], len);
	if (err < 0)
		return err;

	/* Some requests just after changing format causes freezing. */
	FUNC1(100);

	return 0;
}