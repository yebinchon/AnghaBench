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
struct wm0010_priv {scalar_t__ irq; int /*<<< orphan*/  gpio_reset_value; int /*<<< orphan*/  gpio_reset; } ;
struct spi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct wm0010_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct wm0010_priv* FUNC3 (struct spi_device*) ; 

__attribute__((used)) static int FUNC4(struct spi_device *spi)
{
	struct wm0010_priv *wm0010 = FUNC3(spi);

	FUNC1(wm0010->gpio_reset,
				wm0010->gpio_reset_value);

	FUNC2(wm0010->irq, 0);

	if (wm0010->irq)
		FUNC0(wm0010->irq, wm0010);

	return 0;
}