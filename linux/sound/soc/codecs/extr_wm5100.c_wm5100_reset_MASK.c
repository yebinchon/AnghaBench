#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ reset; } ;
struct wm5100_priv {int /*<<< orphan*/  regmap; TYPE_1__ pdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  WM5100_SOFTWARE_RESET ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct wm5100_priv *wm5100)
{
	if (wm5100->pdata.reset) {
		FUNC0(wm5100->pdata.reset, 0);
		FUNC0(wm5100->pdata.reset, 1);

		return 0;
	} else {
		return FUNC1(wm5100->regmap, WM5100_SOFTWARE_RESET, 0);
	}
}