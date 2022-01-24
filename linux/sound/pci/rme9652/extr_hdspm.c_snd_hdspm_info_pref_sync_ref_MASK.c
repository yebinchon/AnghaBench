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
struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_info {int dummy; } ;
struct hdspm {int /*<<< orphan*/  texts_autosync; int /*<<< orphan*/  texts_autosync_items; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_ctl_elem_info*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hdspm* FUNC1 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC2(struct snd_kcontrol *kcontrol,
					struct snd_ctl_elem_info *uinfo)
{
	struct hdspm *hdspm = FUNC1(kcontrol);

	FUNC0(uinfo, 1, hdspm->texts_autosync_items, hdspm->texts_autosync);

	return 0;
}