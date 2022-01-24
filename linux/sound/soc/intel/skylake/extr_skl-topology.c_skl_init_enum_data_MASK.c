#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* private; } ;
struct soc_enum {TYPE_2__ dobj; } ;
struct TYPE_3__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct snd_soc_tplg_enum_control {TYPE_1__ priv; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct device *dev, struct soc_enum *se,
				struct snd_soc_tplg_enum_control *ec)
{

	void *data;

	if (ec->priv.size) {
		data = FUNC0(dev, sizeof(ec->priv.size), GFP_KERNEL);
		if (!data)
			return -ENOMEM;
		FUNC1(data, ec->priv.data, ec->priv.size);
		se->dobj.private = data;
	}

	return 0;

}