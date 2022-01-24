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
struct usX2Ydev {int pcm_devs; struct snd_usX2Y_substream** subs; } ;
struct snd_usX2Y_substream {scalar_t__ pcm_substream; } ;
struct snd_card {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 struct usX2Ydev* FUNC1 (struct snd_card*) ; 

__attribute__((used)) static int FUNC2(struct snd_card *card)
{
	struct usX2Ydev	*dev = FUNC1(card);
	int i;

	for (i = 0; i < dev->pcm_devs * 2; i++) {
		struct snd_usX2Y_substream *subs = dev->subs[i];
		if (subs && subs->pcm_substream &&
		    FUNC0(subs->pcm_substream))
			return -EBUSY;
	}
	return 0;
}