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
struct hda_codec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_PCM_FORMAT_S32_LE ; 
 unsigned int FUNC0 (unsigned int,unsigned short,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct hda_codec *codec,
		unsigned int sample_rate,
		unsigned short channels,
		unsigned short *hda_format)
{
	unsigned int format_val;

	format_val = FUNC0(sample_rate,
				channels, SNDRV_PCM_FORMAT_S32_LE, 32, 0);

	if (hda_format)
		*hda_format = (unsigned short)format_val;

	return 0;
}