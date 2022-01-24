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
struct hda_vmaster_mute_hook {int /*<<< orphan*/  sw_kctl; TYPE_2__* codec; int /*<<< orphan*/  hook; } ;
struct TYPE_4__ {TYPE_1__* bus; } ;
struct TYPE_3__ {scalar_t__ shutdown; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

void FUNC1(struct hda_vmaster_mute_hook *hook)
{
	if (!hook->hook || !hook->codec)
		return;
	/* don't call vmaster hook in the destructor since it might have
	 * been already destroyed
	 */
	if (hook->codec->bus->shutdown)
		return;
	FUNC0(hook->sw_kctl);
}