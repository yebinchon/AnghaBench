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
typedef  int /*<<< orphan*/  template ;
struct snd_kcontrol_new {char* name; scalar_t__ index; } ;
struct snd_kcontrol {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_kcontrol_new*,struct snd_kcontrol_new const*,int) ; 
 struct snd_kcontrol* FUNC3 (struct snd_kcontrol_new*,void*) ; 

struct snd_kcontrol *FUNC4(const struct snd_kcontrol_new *_template,
				  void *data, const char *long_name,
				  const char *prefix)
{
	struct snd_kcontrol_new template;
	struct snd_kcontrol *kcontrol;
	char *name = NULL;

	FUNC2(&template, _template, sizeof(template));
	template.index = 0;

	if (!long_name)
		long_name = template.name;

	if (prefix) {
		name = FUNC0(GFP_KERNEL, "%s %s", prefix, long_name);
		if (!name)
			return NULL;

		template.name = name;
	} else {
		template.name = long_name;
	}

	kcontrol = FUNC3(&template, data);

	FUNC1(name);

	return kcontrol;
}