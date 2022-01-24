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
struct TYPE_3__ {int /*<<< orphan*/ * dtexts; } ;
struct TYPE_4__ {TYPE_1__ control; } ;
struct soc_enum {int items; char const* const* texts; TYPE_2__ dobj; } ;
struct snd_soc_tplg_enum_control {int items; int /*<<< orphan*/ * texts; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ SNDRV_CTL_ELEM_ID_NAME_MAXLEN ; 
 int /*<<< orphan*/ * FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct soc_enum*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct soc_enum *se,
	struct snd_soc_tplg_enum_control *ec)
{
	int i, ret;

	se->dobj.control.dtexts =
		FUNC0(FUNC2(ec->items), sizeof(char *), GFP_KERNEL);
	if (se->dobj.control.dtexts == NULL)
		return -ENOMEM;

	for (i = 0; i < ec->items; i++) {

		if (FUNC4(ec->texts[i], SNDRV_CTL_ELEM_ID_NAME_MAXLEN) ==
			SNDRV_CTL_ELEM_ID_NAME_MAXLEN) {
			ret = -EINVAL;
			goto err;
		}

		se->dobj.control.dtexts[i] = FUNC1(ec->texts[i], GFP_KERNEL);
		if (!se->dobj.control.dtexts[i]) {
			ret = -ENOMEM;
			goto err;
		}
	}

	se->items = FUNC2(ec->items);
	se->texts = (const char * const *)se->dobj.control.dtexts;
	return 0;

err:
	se->items = i;
	FUNC3(se);
	return ret;
}