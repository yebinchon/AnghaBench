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

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,char const*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct hda_codec *codec, const char *name,
				    int start_idx)
{
	int i, idx;
	/* 16 ctlrs should be large enough */
	for (i = 0, idx = start_idx; i < 16; i++, idx++) {
		if (!FUNC0(codec, name, 0, idx))
			return idx;
	}
	return -EBUSY;
}