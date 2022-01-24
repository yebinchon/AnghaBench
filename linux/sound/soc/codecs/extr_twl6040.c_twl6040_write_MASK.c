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
struct twl6040 {int dummy; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 unsigned int TWL6040_CACHEREGNUM ; 
 struct twl6040* FUNC0 (struct snd_soc_component*) ; 
 scalar_t__ FUNC1 (struct snd_soc_component*,unsigned int) ; 
 int FUNC2 (struct twl6040*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_component *component,
			unsigned int reg, unsigned int value)
{
	struct twl6040 *twl6040 = FUNC0(component);

	if (reg >= TWL6040_CACHEREGNUM)
		return -EIO;

	FUNC3(component, reg, value);
	if (FUNC1(component, reg))
		return FUNC2(twl6040, reg, value);
	else
		return 0;
}