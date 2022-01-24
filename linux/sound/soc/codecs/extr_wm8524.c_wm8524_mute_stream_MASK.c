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
struct wm8524_priv {scalar_t__ mute; } ;
struct snd_soc_dai {int /*<<< orphan*/  component; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 struct wm8524_priv* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_dai *dai, int mute, int stream)
{
	struct wm8524_priv *wm8524 = FUNC1(dai->component);

	if (wm8524->mute)
		FUNC0(wm8524->mute, mute);

	return 0;
}