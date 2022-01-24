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
typedef  int u8 ;
struct snd_soc_component {int dummy; } ;
struct da7218_priv {int /*<<< orphan*/  jack; } ;

/* Variables and functions */
 int /*<<< orphan*/  DA7218_EVENT_STATUS ; 
 int DA7218_HPLDET_JACK_STS_MASK ; 
 int SND_JACK_HEADPHONE ; 
 struct da7218_priv* FUNC0 (struct snd_soc_component*) ; 
 int FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC3(struct snd_soc_component *component)
{
	struct da7218_priv *da7218 = FUNC0(component);
	u8 jack_status;
	int report;

	jack_status = FUNC1(component, DA7218_EVENT_STATUS);

	if (jack_status & DA7218_HPLDET_JACK_STS_MASK)
		report = SND_JACK_HEADPHONE;
	else
		report = 0;

	FUNC2(da7218->jack, report, SND_JACK_HEADPHONE);
}