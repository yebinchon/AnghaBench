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
struct da7218_priv {int /*<<< orphan*/  supplies; } ;

/* Variables and functions */
 int /*<<< orphan*/  DA7218_NUM_SUPPLIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct da7218_priv* FUNC1 (struct snd_soc_component*) ; 

__attribute__((used)) static void FUNC2(struct snd_soc_component *component)
{
	struct da7218_priv *da7218 = FUNC1(component);

	FUNC0(DA7218_NUM_SUPPLIES, da7218->supplies);
}