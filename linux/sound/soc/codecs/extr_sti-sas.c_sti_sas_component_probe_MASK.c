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
struct sti_sas_data {int dummy; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct sti_sas_data* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_soc_component*,struct sti_sas_data*) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_component *component)
{
	struct sti_sas_data *drvdata = FUNC0(component->dev);
	int ret;

	ret = FUNC1(component, drvdata);

	return ret;
}