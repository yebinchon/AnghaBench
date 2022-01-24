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
struct wm2000_priv {int dummy; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ANC_OFF ; 
 struct wm2000_priv* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wm2000_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct snd_soc_component *component)
{
	struct wm2000_priv *wm2000 = FUNC0(component->dev);

	FUNC1(wm2000, ANC_OFF);
}