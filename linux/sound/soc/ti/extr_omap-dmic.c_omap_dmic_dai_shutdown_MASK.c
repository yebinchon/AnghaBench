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
struct snd_soc_dai {int /*<<< orphan*/  active; } ;
struct snd_pcm_substream {int dummy; } ;
struct omap_dmic {int /*<<< orphan*/  mutex; scalar_t__ active; int /*<<< orphan*/  pm_qos_req; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct omap_dmic* FUNC3 (struct snd_soc_dai*) ; 

__attribute__((used)) static void FUNC4(struct snd_pcm_substream *substream,
				    struct snd_soc_dai *dai)
{
	struct omap_dmic *dmic = FUNC3(dai);

	FUNC0(&dmic->mutex);

	FUNC2(&dmic->pm_qos_req);

	if (!dai->active)
		dmic->active = 0;

	FUNC1(&dmic->mutex);
}