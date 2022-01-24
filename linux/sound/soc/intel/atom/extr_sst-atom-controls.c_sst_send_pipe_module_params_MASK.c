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
struct sst_ids {int dummy; } ;
struct sst_data {int /*<<< orphan*/  lock; } ;
struct snd_soc_dapm_widget {int /*<<< orphan*/  name; struct sst_ids* priv; int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct sst_data* FUNC2 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sst_data*,int /*<<< orphan*/ ,struct sst_ids*) ; 
 int /*<<< orphan*/  FUNC5 (struct sst_ids*,struct sst_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_dapm_widget *w,
		struct snd_kcontrol *kcontrol)
{
	struct snd_soc_component *c = FUNC3(w->dapm);
	struct sst_data *drv = FUNC2(c);
	struct sst_ids *ids = w->priv;

	FUNC0(&drv->lock);
	FUNC4(drv, w->name, ids);
	FUNC5(ids, drv, 0);
	FUNC1(&drv->lock);

	return 0;
}