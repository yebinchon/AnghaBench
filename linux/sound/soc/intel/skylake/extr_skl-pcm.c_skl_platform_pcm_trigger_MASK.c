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
struct snd_pcm_substream {int dummy; } ;
struct hdac_bus {int /*<<< orphan*/  ppcap; } ;

/* Variables and functions */
 struct hdac_bus* FUNC0 (struct snd_pcm_substream*) ; 
 int FUNC1 (struct snd_pcm_substream*,int) ; 

__attribute__((used)) static int FUNC2(struct snd_pcm_substream *substream,
					int cmd)
{
	struct hdac_bus *bus = FUNC0(substream);

	if (!bus->ppcap)
		return FUNC1(substream, cmd);

	return 0;
}