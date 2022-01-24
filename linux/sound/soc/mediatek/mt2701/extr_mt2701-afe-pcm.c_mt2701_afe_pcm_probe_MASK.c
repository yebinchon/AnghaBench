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
struct mtk_base_afe {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 struct mtk_base_afe* FUNC0 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_component *component)
{
	struct mtk_base_afe *afe = FUNC0(component);

	FUNC1(component, afe->regmap);

	return 0;
}