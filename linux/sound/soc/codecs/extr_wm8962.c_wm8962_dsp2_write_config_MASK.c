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
struct wm8962_priv {int /*<<< orphan*/  regmap; } ;
struct snd_soc_component {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WM8962_HDBASS_AI_1 ; 
 int /*<<< orphan*/  WM8962_MAX_REGISTER ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct wm8962_priv* FUNC1 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC2(struct snd_soc_component *component)
{
	struct wm8962_priv *wm8962 = FUNC1(component);

	return FUNC0(wm8962->regmap,
				    WM8962_HDBASS_AI_1, WM8962_MAX_REGISTER);
}