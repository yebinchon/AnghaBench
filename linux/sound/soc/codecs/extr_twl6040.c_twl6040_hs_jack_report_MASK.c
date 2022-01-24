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
struct twl6040_data {int /*<<< orphan*/  mutex; } ;
struct snd_soc_jack {int dummy; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int TWL6040_PLUGCOMP ; 
 int /*<<< orphan*/  TWL6040_REG_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct twl6040_data* FUNC2 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_jack*,int,int) ; 
 int FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct snd_soc_component *component,
				   struct snd_soc_jack *jack, int report)
{
	struct twl6040_data *priv = FUNC2(component);
	int status;

	FUNC0(&priv->mutex);

	/* Sync status */
	status = FUNC4(component, TWL6040_REG_STATUS);
	if (status & TWL6040_PLUGCOMP)
		FUNC3(jack, report, report);
	else
		FUNC3(jack, 0, report);

	FUNC1(&priv->mutex);
}