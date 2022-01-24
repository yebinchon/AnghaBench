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
struct hda_jack_tbl {int jack_detect; int tag; struct hda_jack_callback* callback; int /*<<< orphan*/  nid; } ;
struct hda_jack_callback {struct hda_jack_callback* next; int /*<<< orphan*/  nid; scalar_t__ func; } ;
struct hda_codec {scalar_t__ jackpoll_interval; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;
typedef  scalar_t__ hda_jack_callback_fn ;

/* Variables and functions */
 int AC_USRSP_EN ; 
 int /*<<< orphan*/  AC_VERB_SET_UNSOLICITED_ENABLE ; 
 int ENOMEM ; 
 struct hda_jack_callback* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct hda_jack_callback* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct hda_jack_tbl* FUNC3 (struct hda_codec*,int /*<<< orphan*/ ) ; 

struct hda_jack_callback *
FUNC4(struct hda_codec *codec, hda_nid_t nid,
				    hda_jack_callback_fn func)
{
	struct hda_jack_tbl *jack;
	struct hda_jack_callback *callback = NULL;
	int err;

	jack = FUNC3(codec, nid);
	if (!jack)
		return FUNC0(-ENOMEM);
	if (func) {
		callback = FUNC1(sizeof(*callback), GFP_KERNEL);
		if (!callback)
			return FUNC0(-ENOMEM);
		callback->func = func;
		callback->nid = jack->nid;
		callback->next = jack->callback;
		jack->callback = callback;
	}

	if (jack->jack_detect)
		return callback; /* already registered */
	jack->jack_detect = 1;
	if (codec->jackpoll_interval > 0)
		return callback; /* No unsol if we're polling instead */
	err = FUNC2(codec, nid, 0,
					 AC_VERB_SET_UNSOLICITED_ENABLE,
					 AC_USRSP_EN | jack->tag);
	if (err < 0)
		return FUNC0(err);
	return callback;
}