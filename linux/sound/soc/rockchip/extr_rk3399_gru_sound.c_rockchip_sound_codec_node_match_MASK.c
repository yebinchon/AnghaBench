#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_3__ {scalar_t__ bus_type; int /*<<< orphan*/  compatible; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 struct device* FUNC1 (scalar_t__,struct device_node*) ; 
 TYPE_1__* dailink_match ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device_node *np_codec)
{
	struct device *dev;
	int i;

	for (i = 0; i < FUNC0(dailink_match); i++) {
		if (!FUNC2(np_codec,
					     dailink_match[i].compatible))
			continue;

		if (dailink_match[i].bus_type) {
			dev = FUNC1(dailink_match[i].bus_type,
							 np_codec);
			if (!dev)
				continue;
			FUNC3(dev);
		}

		return i;
	}
	return -1;
}