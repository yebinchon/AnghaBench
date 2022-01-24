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
struct sta350_priv {int /*<<< orphan*/  supplies; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sta350_priv* FUNC2 (struct snd_soc_component*) ; 

__attribute__((used)) static void FUNC3(struct snd_soc_component *component)
{
	struct sta350_priv *sta350 = FUNC2(component);

	FUNC1(FUNC0(sta350->supplies), sta350->supplies);
}