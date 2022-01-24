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
typedef  int u16 ;
struct snd_soc_dai {int /*<<< orphan*/  dev; struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  WM8804_AIFRX ; 
 int /*<<< orphan*/  WM8804_AIFTX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct snd_pcm_hw_params*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC3(struct snd_pcm_substream *substream,
			    struct snd_pcm_hw_params *params,
			    struct snd_soc_dai *dai)
{
	struct snd_soc_component *component;
	u16 blen;

	component = dai->component;

	switch (FUNC1(params)) {
	case 16:
		blen = 0x0;
		break;
	case 20:
		blen = 0x1;
		break;
	case 24:
		blen = 0x2;
		break;
	default:
		FUNC0(dai->dev, "Unsupported word length: %u\n",
			FUNC1(params));
		return -EINVAL;
	}

	/* set word length */
	FUNC2(component, WM8804_AIFTX, 0xc, blen << 2);
	FUNC2(component, WM8804_AIFRX, 0xc, blen << 2);

	return 0;
}