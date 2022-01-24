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
struct omap_mcbsp {int dma_op_mode; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (char**) ; 
 struct omap_mcbsp* FUNC1 (struct device*) ; 
 char** dma_op_modes ; 
 int FUNC2 (char*,char*,...) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
				struct device_attribute *attr, char *buf)
{
	struct omap_mcbsp *mcbsp = FUNC1(dev);
	int dma_op_mode, i = 0;
	ssize_t len = 0;
	const char * const *s;

	dma_op_mode = mcbsp->dma_op_mode;

	for (s = &dma_op_modes[i]; i < FUNC0(dma_op_modes); s++, i++) {
		if (dma_op_mode == i)
			len += FUNC2(buf + len, "[%s] ", *s);
		else
			len += FUNC2(buf + len, "%s ", *s);
	}
	len += FUNC2(buf + len, "\n");

	return len;
}