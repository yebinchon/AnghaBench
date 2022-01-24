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
struct hda_codec {int dummy; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
#define  INPUT_PIN_ATTR_DOCK 129 
#define  INPUT_PIN_ATTR_FRONT 128 
 unsigned int FUNC0 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned int) ; 

__attribute__((used)) static const char *FUNC2(struct hda_codec *codec, hda_nid_t nid)
{
	unsigned int def_conf = FUNC0(codec, nid);
	int attr = FUNC1(def_conf);

	/* check the location */
	switch (attr) {
	case INPUT_PIN_ATTR_DOCK:
		return "Dock ";
	case INPUT_PIN_ATTR_FRONT:
		return "Front ";
	}
	return "";
}