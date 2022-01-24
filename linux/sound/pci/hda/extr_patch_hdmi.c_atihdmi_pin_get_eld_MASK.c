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
 int /*<<< orphan*/  FUNC0 (struct hda_codec*) ; 
 int FUNC1 (struct hda_codec*,int /*<<< orphan*/ ,unsigned char*,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct hda_codec *codec, hda_nid_t nid,
			   unsigned char *buf, int *eld_size)
{
	/* call hda_eld.c ATI/AMD-specific function */
	return FUNC1(codec, nid, buf, eld_size,
				    FUNC0(codec));
}