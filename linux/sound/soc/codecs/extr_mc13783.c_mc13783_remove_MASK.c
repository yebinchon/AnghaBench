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
struct snd_soc_component {int dummy; } ;
struct mc13783_priv {int /*<<< orphan*/  mc13xxx; } ;

/* Variables and functions */
 int /*<<< orphan*/  MC13783_AUDIO_RX0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct mc13783_priv* FUNC1 (struct snd_soc_component*) ; 

__attribute__((used)) static void FUNC2(struct snd_soc_component *component)
{
	struct mc13783_priv *priv = FUNC1(component);

	/* Make sure VAUDIOON is off */
	FUNC0(priv->mc13xxx, MC13783_AUDIO_RX0, 0x3, 0);
}