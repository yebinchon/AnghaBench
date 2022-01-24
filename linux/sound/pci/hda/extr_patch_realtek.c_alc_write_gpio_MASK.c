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
struct TYPE_2__ {int /*<<< orphan*/  afg; } ;
struct hda_codec {TYPE_1__ core; struct alc_spec* spec; } ;
struct alc_spec {scalar_t__ gpio_write_delay; int /*<<< orphan*/  gpio_dir; int /*<<< orphan*/  gpio_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_VERB_SET_GPIO_DIRECTION ; 
 int /*<<< orphan*/  AC_VERB_SET_GPIO_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct hda_codec *codec)
{
	struct alc_spec *spec = codec->spec;

	if (!spec->gpio_mask)
		return;

	FUNC2(codec, codec->core.afg, 0,
			    AC_VERB_SET_GPIO_MASK, spec->gpio_mask);
	FUNC2(codec, codec->core.afg, 0,
			    AC_VERB_SET_GPIO_DIRECTION, spec->gpio_dir);
	if (spec->gpio_write_delay)
		FUNC1(1);
	FUNC0(codec);
}