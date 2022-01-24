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
struct snd_kcontrol {int dummy; } ;
struct dapm_kcontrol_data {struct dapm_kcontrol_data* wlist; int /*<<< orphan*/  paths; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dapm_kcontrol_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct dapm_kcontrol_data* FUNC2 (struct snd_kcontrol*) ; 

__attribute__((used)) static void FUNC3(struct snd_kcontrol *kctl)
{
	struct dapm_kcontrol_data *data = FUNC2(kctl);

	FUNC1(&data->paths);
	FUNC0(data->wlist);
	FUNC0(data);
}