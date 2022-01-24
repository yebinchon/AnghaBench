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
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct adau {int /*<<< orphan*/  regmap; int /*<<< orphan*/  (* switch_mode ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct adau* FUNC1 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct snd_soc_component *component)
{
	struct adau *adau = FUNC1(component);

	if (adau->switch_mode)
		adau->switch_mode(component->dev);

	FUNC0(adau->regmap);

	return 0;
}