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
struct fsi_clk {int (* set_rate ) (struct device*,struct fsi_priv*) ;int /*<<< orphan*/ * own; int /*<<< orphan*/ * div; int /*<<< orphan*/ * ick; int /*<<< orphan*/ * xck; scalar_t__ count; scalar_t__ rate; } ;
struct fsi_priv {struct fsi_clk clock; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 void* FUNC2 (struct device*,char*) ; 
 int FUNC3 (struct fsi_priv*) ; 

__attribute__((used)) static int FUNC4(struct device *dev,
			struct fsi_priv *fsi,
			int xck,
			int ick,
			int div,
			int (*set_rate)(struct device *dev,
					struct fsi_priv *fsi))
{
	struct fsi_clk *clock = &fsi->clock;
	int is_porta = FUNC3(fsi);

	clock->xck	= NULL;
	clock->ick	= NULL;
	clock->div	= NULL;
	clock->rate	= 0;
	clock->count	= 0;
	clock->set_rate	= set_rate;

	clock->own = FUNC2(dev, NULL);
	if (FUNC0(clock->own))
		return -EINVAL;

	/* external clock */
	if (xck) {
		clock->xck = FUNC2(dev, is_porta ? "xcka" : "xckb");
		if (FUNC0(clock->xck)) {
			FUNC1(dev, "can't get xck clock\n");
			return -EINVAL;
		}
		if (clock->xck == clock->own) {
			FUNC1(dev, "cpu doesn't support xck clock\n");
			return -EINVAL;
		}
	}

	/* FSIACLK/FSIBCLK */
	if (ick) {
		clock->ick = FUNC2(dev,  is_porta ? "icka" : "ickb");
		if (FUNC0(clock->ick)) {
			FUNC1(dev, "can't get ick clock\n");
			return -EINVAL;
		}
		if (clock->ick == clock->own) {
			FUNC1(dev, "cpu doesn't support ick clock\n");
			return -EINVAL;
		}
	}

	/* FSI-DIV */
	if (div) {
		clock->div = FUNC2(dev,  is_porta ? "diva" : "divb");
		if (FUNC0(clock->div)) {
			FUNC1(dev, "can't get div clock\n");
			return -EINVAL;
		}
		if (clock->div == clock->own) {
			FUNC1(dev, "cpu doesn't support div clock\n");
			return -EINVAL;
		}
	}

	return 0;
}