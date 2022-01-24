#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_dapm_widget {TYPE_2__* dapm; int /*<<< orphan*/  dirty; int /*<<< orphan*/  name; } ;
struct TYPE_4__ {TYPE_1__* card; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dapm_dirty; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_dapm_widget*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct snd_soc_dapm_widget *w, const char *reason)
{
	FUNC0(w->dapm);

	if (!FUNC1(w)) {
		FUNC2(w->dapm->dev, "Marking %s dirty due to %s\n",
			 w->name, reason);
		FUNC3(&w->dirty, &w->dapm->card->dapm_dirty);
	}
}