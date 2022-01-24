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
struct nid_path {int depth; int /*<<< orphan*/  active; int /*<<< orphan*/ * path; } ;
struct hda_codec {int /*<<< orphan*/  spec; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_codec*,struct nid_path*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nid_path* FUNC4 (struct hda_codec*,int) ; 

__attribute__((used)) static void FUNC5(struct hda_codec *codec, int path_idx)
{
	struct nid_path *path;
	hda_nid_t pin;

	path = FUNC4(codec, path_idx);
	if (!path || !path->depth)
		return;
	pin = path->path[path->depth - 1];
	FUNC1(codec, pin);
	FUNC3(codec, path, path->active,
			      FUNC0(codec->spec));
	FUNC2(codec, pin, path->active);
}