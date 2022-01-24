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
struct hda_codec {int power_save_node; struct cs_spec* spec; } ;
struct cs_spec {int vendor_nid; int /*<<< orphan*/  gen; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct cs_spec* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct cs_spec *FUNC2(struct hda_codec *codec, int vendor_nid)
{
	struct cs_spec *spec;

	spec = FUNC0(sizeof(*spec), GFP_KERNEL);
	if (!spec)
		return NULL;
	codec->spec = spec;
	spec->vendor_nid = vendor_nid;
	codec->power_save_node = 1;
	FUNC1(&spec->gen);

	return spec;
}