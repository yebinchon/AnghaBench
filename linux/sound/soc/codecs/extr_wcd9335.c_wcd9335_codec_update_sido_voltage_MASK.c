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
struct wcd9335_codec {int /*<<< orphan*/  dev; } ;
typedef  enum wcd9335_sido_voltage { ____Placeholder_wcd9335_sido_voltage } wcd9335_sido_voltage ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct wcd9335_codec*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wcd9335_codec*,int) ; 

__attribute__((used)) static int FUNC3(struct wcd9335_codec *wcd,
					     enum wcd9335_sido_voltage req_mv)
{
	int ret = 0;

	/* enable mclk before setting SIDO voltage */
	ret = FUNC1(wcd, true);
	if (ret) {
		FUNC0(wcd->dev, "Ext clk enable failed\n");
		goto err;
	}

	FUNC2(wcd, req_mv);
	FUNC1(wcd, false);

err:
	return ret;
}