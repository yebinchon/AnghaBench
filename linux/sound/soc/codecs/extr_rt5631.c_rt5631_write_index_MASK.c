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
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT5631_INDEX_ADD ; 
 int /*<<< orphan*/  RT5631_INDEX_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_component*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC1(struct snd_soc_component *component,
		unsigned int reg, unsigned int value)
{
	FUNC0(component, RT5631_INDEX_ADD, reg);
	FUNC0(component, RT5631_INDEX_DATA, value);
}