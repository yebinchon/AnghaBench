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
typedef  int /*<<< orphan*/  u8 ;
struct snd_oxfw_stream_formation {int /*<<< orphan*/  midi; int /*<<< orphan*/  pcm; int /*<<< orphan*/  rate; } ;
struct snd_oxfw {int /*<<< orphan*/ ** tx_stream_formats; int /*<<< orphan*/  has_output; int /*<<< orphan*/ ** rx_stream_formats; } ;
struct snd_info_entry {struct snd_oxfw* private_data; } ;
struct snd_info_buffer {int dummy; } ;
typedef  int /*<<< orphan*/  curr ;

/* Variables and functions */
 int /*<<< orphan*/  AVC_GENERAL_PLUG_DIR_IN ; 
 int /*<<< orphan*/  AVC_GENERAL_PLUG_DIR_OUT ; 
 int SND_OXFW_STREAM_FORMAT_ENTRIES ; 
 scalar_t__ FUNC0 (struct snd_oxfw_stream_formation*,struct snd_oxfw_stream_formation*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_info_buffer*,char*,...) ; 
 int FUNC2 (struct snd_oxfw*,int /*<<< orphan*/ ,struct snd_oxfw_stream_formation*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct snd_oxfw_stream_formation*) ; 

__attribute__((used)) static void FUNC4(struct snd_info_entry *entry,
				struct snd_info_buffer *buffer)
{
	struct snd_oxfw *oxfw = entry->private_data;
	struct snd_oxfw_stream_formation formation, curr;
	u8 *format;
	char flag;
	int i, err;

	/* Show input. */
	err = FUNC2(oxfw,
						    AVC_GENERAL_PLUG_DIR_IN,
						    &curr);
	if (err < 0)
		return;

	FUNC1(buffer, "Input Stream to device:\n");
	FUNC1(buffer, "\tRate\tPCM\tMIDI\n");
	for (i = 0; i < SND_OXFW_STREAM_FORMAT_ENTRIES; i++) {
		format = oxfw->rx_stream_formats[i];
		if (format == NULL)
			continue;

		err = FUNC3(format, &formation);
		if (err < 0)
			continue;

		if (FUNC0(&formation, &curr, sizeof(curr)) == 0)
			flag = '*';
		else
			flag = ' ';

		FUNC1(buffer, "%c\t%d\t%d\t%d\n", flag,
			    formation.rate, formation.pcm, formation.midi);
	}

	if (!oxfw->has_output)
		return;

	/* Show output. */
	err = FUNC2(oxfw,
						    AVC_GENERAL_PLUG_DIR_OUT,
						    &curr);
	if (err < 0)
		return;

	FUNC1(buffer, "Output Stream from device:\n");
	FUNC1(buffer, "\tRate\tPCM\tMIDI\n");
	for (i = 0; i < SND_OXFW_STREAM_FORMAT_ENTRIES; i++) {
		format = oxfw->tx_stream_formats[i];
		if (format == NULL)
			continue;

		err = FUNC3(format, &formation);
		if (err < 0)
			continue;

		if (FUNC0(&formation, &curr, sizeof(curr)) == 0)
			flag = '*';
		else
			flag = ' ';

		FUNC1(buffer, "%c\t%d\t%d\t%d\n", flag,
			    formation.rate, formation.pcm, formation.midi);
	}
}