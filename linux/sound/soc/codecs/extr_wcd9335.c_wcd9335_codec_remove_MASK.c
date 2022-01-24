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
struct wcd9335_codec {int /*<<< orphan*/  irq_data; int /*<<< orphan*/  clsh_ctrl; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  WCD9335_IRQ_SLIMBUS ; 
 struct wcd9335_codec* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct wcd9335_codec*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct snd_soc_component *comp)
{
	struct wcd9335_codec *wcd = FUNC0(comp->dev);

	FUNC3(wcd->clsh_ctrl);
	FUNC1(FUNC2(wcd->irq_data, WCD9335_IRQ_SLIMBUS), wcd);
}