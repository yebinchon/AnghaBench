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
struct tpa6130a2_data {scalar_t__ id; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ TPA6140A2 ; 
 int FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tpa6130a2_data* FUNC2 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  tpa6130a2_controls ; 
 int /*<<< orphan*/  tpa6140a2_controls ; 

__attribute__((used)) static int FUNC3(struct snd_soc_component *component)
{
	struct tpa6130a2_data *data = FUNC2(component);

	if (data->id == TPA6140A2)
		return FUNC1(component,
			tpa6140a2_controls, FUNC0(tpa6140a2_controls));
	else
		return FUNC1(component,
			tpa6130a2_controls, FUNC0(tpa6130a2_controls));
}