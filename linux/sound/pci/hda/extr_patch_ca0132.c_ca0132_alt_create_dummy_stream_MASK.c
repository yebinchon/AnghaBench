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
struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {int /*<<< orphan*/ * dacs; int /*<<< orphan*/  dsp_stream_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_FORMAT_S32_LE ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC2 (int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct hda_codec *codec)
{
	struct ca0132_spec *spec = codec->spec;
	unsigned int stream_format;

	stream_format = FUNC2(48000, 2,
			SNDRV_PCM_FORMAT_S32_LE, 32, 0);

	FUNC1(codec, spec->dacs[0], spec->dsp_stream_id,
					0, stream_format);

	FUNC0(codec, spec->dacs[0]);
}