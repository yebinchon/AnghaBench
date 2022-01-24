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
struct snd_ymfpci {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct snd_pcm_substream*) ; 
 struct snd_ymfpci* FUNC1 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_ymfpci*) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream)
{
	struct snd_ymfpci *chip = FUNC1(substream);

	/* wait, until the PCI operations are not finished */
	FUNC2(chip);
	return FUNC0(substream);
}