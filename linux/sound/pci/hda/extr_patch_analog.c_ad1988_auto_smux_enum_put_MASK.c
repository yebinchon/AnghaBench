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
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {unsigned int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct nid_path {int dummy; } ;
struct hda_codec {int /*<<< orphan*/  control_mutex; struct ad198x_spec* spec; } ;
struct ad198x_spec {unsigned int cur_smux; int /*<<< orphan*/ * smux_paths; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,struct nid_path*,int,int) ; 
 int FUNC3 (struct hda_codec*,int) ; 
 struct nid_path* FUNC4 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 struct hda_codec* FUNC5 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC6(struct snd_kcontrol *kcontrol,
				     struct snd_ctl_elem_value *ucontrol)
{
	struct hda_codec *codec = FUNC5(kcontrol);
	struct ad198x_spec *spec = codec->spec;
	unsigned int val = ucontrol->value.enumerated.item[0];
	struct nid_path *path;
	int num_conns = FUNC3(codec, 0x0b) + 1;

	if (val >= num_conns)
		return -EINVAL;
	if (spec->cur_smux == val)
		return 0;

	FUNC0(&codec->control_mutex);
	path = FUNC4(codec,
					 spec->smux_paths[spec->cur_smux]);
	if (path)
		FUNC2(codec, path, false, true);
	path = FUNC4(codec, spec->smux_paths[val]);
	if (path)
		FUNC2(codec, path, true, true);
	spec->cur_smux = val;
	FUNC1(&codec->control_mutex);
	return 1;
}