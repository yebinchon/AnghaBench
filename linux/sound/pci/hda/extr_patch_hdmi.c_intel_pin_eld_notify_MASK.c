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
struct hda_codec {TYPE_1__* bus; int /*<<< orphan*/  core; int /*<<< orphan*/  card; } ;
struct TYPE_2__ {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 scalar_t__ SNDRV_CTL_POWER_D0 ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int,int) ; 
 int FUNC1 (struct hda_codec*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void *audio_ptr, int port, int pipe)
{
	struct hda_codec *codec = audio_ptr;
	int pin_nid;
	int dev_id = pipe;

	pin_nid = FUNC1(codec, port);
	if (!pin_nid)
		return;
	/* skip notification during system suspend (but not in runtime PM);
	 * the state will be updated at resume
	 */
	if (FUNC4(codec->card) != SNDRV_CTL_POWER_D0)
		return;
	/* ditto during suspend/resume process itself */
	if (FUNC3(&codec->core))
		return;

	FUNC2(&codec->bus->core);
	FUNC0(codec, pin_nid, dev_id);
}