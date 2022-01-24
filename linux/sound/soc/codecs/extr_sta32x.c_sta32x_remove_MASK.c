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
struct sta32x_priv {scalar_t__ xti_clk; int /*<<< orphan*/  supplies; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sta32x_priv* FUNC3 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC4 (struct sta32x_priv*) ; 

__attribute__((used)) static void FUNC5(struct snd_soc_component *component)
{
	struct sta32x_priv *sta32x = FUNC3(component);

	FUNC4(sta32x);
	FUNC2(FUNC0(sta32x->supplies), sta32x->supplies);

	if (sta32x->xti_clk)
		FUNC1(sta32x->xti_clk);
}