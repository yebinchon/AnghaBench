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
struct snd_kcontrol_new {char const* name; } ;
struct hda_gen_spec {int /*<<< orphan*/  kctls; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 struct snd_kcontrol_new* FUNC1 (int /*<<< orphan*/ *) ; 

struct snd_kcontrol_new *
FUNC2(struct hda_gen_spec *spec, const char *name,
		     const struct snd_kcontrol_new *temp)
{
	struct snd_kcontrol_new *knew = FUNC1(&spec->kctls);
	if (!knew)
		return NULL;
	*knew = *temp;
	if (name)
		knew->name = FUNC0(name, GFP_KERNEL);
	else if (knew->name)
		knew->name = FUNC0(knew->name, GFP_KERNEL);
	if (!knew->name)
		return NULL;
	return knew;
}