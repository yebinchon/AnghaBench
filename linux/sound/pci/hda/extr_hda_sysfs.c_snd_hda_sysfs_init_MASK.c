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
struct hda_verb {int dummy; } ;
struct hda_pincfg {int dummy; } ;
struct hda_hint {int dummy; } ;
struct hda_codec {int /*<<< orphan*/  user_pins; int /*<<< orphan*/  hints; int /*<<< orphan*/  init_verbs; int /*<<< orphan*/  user_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 

void FUNC2(struct hda_codec *codec)
{
	FUNC0(&codec->user_mutex);
#ifdef CONFIG_SND_HDA_RECONFIG
	snd_array_init(&codec->init_verbs, sizeof(struct hda_verb), 32);
	snd_array_init(&codec->hints, sizeof(struct hda_hint), 32);
	snd_array_init(&codec->user_pins, sizeof(struct hda_pincfg), 16);
#endif
}