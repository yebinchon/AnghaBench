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
struct nid_path {int depth; int active; scalar_t__* path; } ;
struct hda_gen_spec {int /*<<< orphan*/  paths; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
typedef  scalar_t__ hda_nid_t ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct hda_codec*,scalar_t__,scalar_t__ const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nid_path*,int /*<<< orphan*/ ,int) ; 
 struct nid_path* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct hda_codec *codec, hda_nid_t nid,
			   int num_pins, const hda_nid_t *pins)
{
	struct hda_gen_spec *spec = codec->spec;
	struct nid_path *path;
	int i;

	for (i = 0; i < num_pins; i++) {
		if (!pins[i])
			break;
		if (FUNC0(codec, nid, pins[i], 0))
			continue;
		path = FUNC2(&spec->paths);
		if (!path)
			return -ENOMEM;
		FUNC1(path, 0, sizeof(*path));
		path->depth = 2;
		path->path[0] = nid;
		path->path[1] = pins[i];
		path->active = true;
	}
	return 0;
}