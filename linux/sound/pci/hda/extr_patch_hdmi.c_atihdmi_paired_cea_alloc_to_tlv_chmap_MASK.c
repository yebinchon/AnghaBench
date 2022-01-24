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
struct hdac_chmap {int dummy; } ;
struct hdac_cea_channel_speaker_allocation {int* speakers; } ;

/* Variables and functions */
 unsigned int SNDRV_CHMAP_NA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 unsigned int FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct hdac_chmap *hchmap,
		struct hdac_cea_channel_speaker_allocation *cap,
		unsigned int *chmap, int channels)
{
	/* produce paired maps for pre-rev3 ATI/AMD codecs */
	int count = 0;
	int c;

	for (c = 7; c >= 0; c--) {
		int chan = 7 - FUNC1(7 - c);
		int spk = cap->speakers[chan];
		if (!spk) {
			/* add N/A channel if the companion channel is occupied */
			if (cap->speakers[chan + (chan % 2 ? -1 : 1)])
				chmap[count++] = SNDRV_CHMAP_NA;

			continue;
		}

		chmap[count++] = FUNC2(spk);
	}

	FUNC0(count != channels);
}