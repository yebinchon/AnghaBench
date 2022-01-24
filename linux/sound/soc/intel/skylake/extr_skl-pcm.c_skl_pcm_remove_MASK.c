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
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct skl_dev {int dummy; } ;
struct hdac_bus {int dummy; } ;

/* Variables and functions */
 struct skl_dev* FUNC0 (struct hdac_bus*) ; 
 struct hdac_bus* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct skl_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,struct hdac_bus*) ; 

__attribute__((used)) static void FUNC4(struct snd_soc_component *component)
{
	struct hdac_bus *bus = FUNC1(component->dev);
	struct skl_dev *skl = FUNC0(bus);

	FUNC3(component, bus);

	FUNC2(skl);
}