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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct skl_dev {struct nhlt_acpi_table* nhlt; } ;
struct nhlt_specific_cfg {int dummy; } ;
struct nhlt_fmt {int dummy; } ;
struct TYPE_2__ {scalar_t__ size; scalar_t__ caps; } ;
struct nhlt_endpoint {int length; TYPE_1__ config; } ;
struct nhlt_acpi_table {int endpoint_count; scalar_t__ desc; } ;
struct hdac_bus {struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC2 (struct device*,struct nhlt_endpoint*,int /*<<< orphan*/ ,int,int,int) ; 
 struct nhlt_specific_cfg* FUNC3 (struct device*,struct nhlt_fmt*,int,int /*<<< orphan*/ ,int,int) ; 
 struct hdac_bus* FUNC4 (struct skl_dev*) ; 

struct nhlt_specific_cfg
*FUNC5(struct skl_dev *skl, u32 instance, u8 link_type,
			u8 s_fmt, u8 num_ch, u32 s_rate,
			u8 dirn, u8 dev_type)
{
	struct nhlt_fmt *fmt;
	struct nhlt_endpoint *epnt;
	struct hdac_bus *bus = FUNC4(skl);
	struct device *dev = bus->dev;
	struct nhlt_specific_cfg *sp_config;
	struct nhlt_acpi_table *nhlt = skl->nhlt;
	u16 bps = (s_fmt == 16) ? 16 : 32;
	u8 j;

	FUNC1(dev, instance, link_type, s_fmt, num_ch, s_rate, dirn, bps);

	epnt = (struct nhlt_endpoint *)nhlt->desc;

	FUNC0(dev, "endpoint count =%d\n", nhlt->endpoint_count);

	for (j = 0; j < nhlt->endpoint_count; j++) {
		if (FUNC2(dev, epnt, instance, link_type,
						dirn, dev_type)) {
			fmt = (struct nhlt_fmt *)(epnt->config.caps +
						 epnt->config.size);
			sp_config = FUNC3(dev, fmt, num_ch,
							s_rate, bps, link_type);
			if (sp_config)
				return sp_config;
		}

		epnt = (struct nhlt_endpoint *)((u8 *)epnt + epnt->length);
	}

	return NULL;
}