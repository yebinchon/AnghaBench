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
struct fsi_clk {scalar_t__ count; int (* set_rate ) (struct device*,struct fsi_priv*) ;int /*<<< orphan*/  div; int /*<<< orphan*/  ick; int /*<<< orphan*/  xck; } ;
struct fsi_priv {struct fsi_clk clock; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fsi_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct fsi_priv*) ; 
 int FUNC3 (struct device*,struct fsi_priv*) ; 

__attribute__((used)) static int FUNC4(struct device *dev,
			  struct fsi_priv *fsi)
{
	struct fsi_clk *clock = &fsi->clock;
	int ret = -EINVAL;

	if (!FUNC2(fsi))
		return ret;

	if (0 == clock->count) {
		ret = clock->set_rate(dev, fsi);
		if (ret < 0) {
			FUNC1(fsi);
			return ret;
		}

		FUNC0(clock->xck);
		FUNC0(clock->ick);
		FUNC0(clock->div);

		clock->count++;
	}

	return ret;
}