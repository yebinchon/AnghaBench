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
struct lpass_variant {int i2s_ports; int irq_ports; int rdma_channels; int wrdma_channels; scalar_t__ wrdma_channel_start; } ;
struct lpass_data {struct lpass_variant* variant; } ;
struct device {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct lpass_variant*,int) ; 
 unsigned int FUNC1 (struct lpass_variant*,int) ; 
 unsigned int FUNC2 (struct lpass_variant*,int) ; 
 unsigned int FUNC3 (struct lpass_variant*,int) ; 
 unsigned int FUNC4 (struct lpass_variant*,int) ; 
 unsigned int FUNC5 (struct lpass_variant*,int) ; 
 unsigned int FUNC6 (struct lpass_variant*,int) ; 
 unsigned int FUNC7 (struct lpass_variant*,scalar_t__) ; 
 unsigned int FUNC8 (struct lpass_variant*,scalar_t__) ; 
 unsigned int FUNC9 (struct lpass_variant*,scalar_t__) ; 
 unsigned int FUNC10 (struct lpass_variant*,scalar_t__) ; 
 struct lpass_data* FUNC11 (struct device*) ; 

__attribute__((used)) static bool FUNC12(struct device *dev, unsigned int reg)
{
	struct lpass_data *drvdata = FUNC11(dev);
	struct lpass_variant *v = drvdata->variant;
	int i;

	for (i = 0; i < v->i2s_ports; ++i)
		if (reg == FUNC0(v, i))
			return true;

	for (i = 0; i < v->irq_ports; ++i) {
		if (reg == FUNC2(v, i))
			return true;
		if (reg == FUNC1(v, i))
			return true;
	}

	for (i = 0; i < v->rdma_channels; ++i) {
		if (reg == FUNC5(v, i))
			return true;
		if (reg == FUNC3(v, i))
			return true;
		if (reg == FUNC4(v, i))
			return true;
		if (reg == FUNC6(v, i))
			return true;
	}

	for (i = 0; i < v->wrdma_channels; ++i) {
		if (reg == FUNC9(v, i + v->wrdma_channel_start))
			return true;
		if (reg == FUNC7(v, i + v->wrdma_channel_start))
			return true;
		if (reg == FUNC8(v, i + v->wrdma_channel_start))
			return true;
		if (reg == FUNC10(v, i + v->wrdma_channel_start))
			return true;
	}

	return false;
}