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
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct asoc_simple_data {int /*<<< orphan*/  convert_channels; int /*<<< orphan*/  convert_rate; } ;
typedef  int /*<<< orphan*/  prop ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*,char*) ; 

void FUNC2(struct device *dev,
			       struct device_node *np,
			       char *prefix,
			       struct asoc_simple_data *data)
{
	char prop[128];

	if (!prefix)
		prefix = "";

	/* sampling rate convert */
	FUNC1(prop, sizeof(prop), "%s%s", prefix, "convert-rate");
	FUNC0(np, prop, &data->convert_rate);

	/* channels transfer */
	FUNC1(prop, sizeof(prop), "%s%s", prefix, "convert-channels");
	FUNC0(np, prop, &data->convert_channels);
}