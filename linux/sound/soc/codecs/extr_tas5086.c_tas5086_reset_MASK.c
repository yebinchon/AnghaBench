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
struct tas5086_private {int /*<<< orphan*/  gpio_nreset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct tas5086_private *priv)
{
	if (FUNC1(priv->gpio_nreset)) {
		/* Reset codec - minimum assertion time is 400ns */
		FUNC0(priv->gpio_nreset, 0);
		FUNC4(1);
		FUNC2(priv->gpio_nreset, 1);

		/* Codec needs ~15ms to wake up */
		FUNC3(15);
	}
}