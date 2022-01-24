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
struct hda_cvt_setup {int format_id; } ;
struct hda_codec {int dummy; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 int /*<<< orphan*/  AC_VERB_GET_STREAM_FORMAT ; 
 int /*<<< orphan*/  AC_VERB_SET_STREAM_FORMAT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct hda_codec *codec, struct hda_cvt_setup *p,
			      hda_nid_t nid, int format)
{
	unsigned int oldval;

	if (p->format_id != format) {
		oldval = FUNC1(codec, nid, 0,
					    AC_VERB_GET_STREAM_FORMAT, 0);
		if (oldval != format) {
			FUNC0(1);
			FUNC2(codec, nid, 0,
					    AC_VERB_SET_STREAM_FORMAT,
					    format);
		}
		p->format_id = format;
	}
}