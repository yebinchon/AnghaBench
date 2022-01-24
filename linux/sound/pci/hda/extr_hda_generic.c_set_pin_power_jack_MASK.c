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
struct hda_codec {int /*<<< orphan*/  power_save_node; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 int FUNC0 (struct hda_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static hda_nid_t FUNC2(struct hda_codec *codec, hda_nid_t pin,
				    int power)
{
	bool on;

	if (!codec->power_save_node)
		return 0;

	on = FUNC0(codec, pin);

	if (power >= 0 && on != power)
		return 0;
	return FUNC1(codec, pin, on, -1);
}