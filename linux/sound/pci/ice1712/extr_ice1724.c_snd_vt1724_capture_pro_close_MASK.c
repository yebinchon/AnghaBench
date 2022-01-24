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
struct snd_ice1712 {int /*<<< orphan*/ * capture_pro_substream; int /*<<< orphan*/  pro_rate_default; } ;

/* Variables and functions */
 scalar_t__ PRO_RATE_RESET ; 
 struct snd_ice1712* FUNC0 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ice1712*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct snd_pcm_substream *substream)
{
	struct snd_ice1712 *ice = FUNC0(substream);

	if (PRO_RATE_RESET)
		FUNC1(ice, ice->pro_rate_default, 0);
	ice->capture_pro_substream = NULL;
	return 0;
}