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
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC1 (struct hda_codec*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC3(struct hda_codec *codec, hda_nid_t pin,
			   unsigned int val, bool do_write)
{
	if (!pin)
		return;
	val = FUNC1(codec, pin, val);
	FUNC0(codec, pin, val);
	if (do_write)
		FUNC2(codec, pin, val);
}