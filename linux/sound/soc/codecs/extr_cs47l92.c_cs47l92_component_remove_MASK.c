#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_component {int dummy; } ;
struct madera {int /*<<< orphan*/  dapm_ptr_lock; int /*<<< orphan*/ * dapm; } ;
struct TYPE_2__ {int /*<<< orphan*/ * adsp; struct madera* madera; } ;
struct cs47l92 {TYPE_1__ core; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct cs47l92* FUNC2 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct snd_soc_component*) ; 

__attribute__((used)) static void FUNC4(struct snd_soc_component *component)
{
	struct cs47l92 *cs47l92 = FUNC2(component);
	struct madera *madera = cs47l92->core.madera;

	FUNC0(&madera->dapm_ptr_lock);
	madera->dapm = NULL;
	FUNC1(&madera->dapm_ptr_lock);

	FUNC3(&cs47l92->core.adsp[0], component);
}