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
struct hda_conn_list {int /*<<< orphan*/  list; } ;
struct hda_codec {int dummy; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 int FUNC0 (struct hda_codec*,int /*<<< orphan*/ ,int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_conn_list*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct hda_conn_list* FUNC3 (struct hda_codec*,int /*<<< orphan*/ ) ; 

int FUNC4(struct hda_codec *codec, hda_nid_t nid, int len,
			       const hda_nid_t *list)
{
	struct hda_conn_list *p;

	p = FUNC3(codec, nid);
	if (p) {
		FUNC2(&p->list);
		FUNC1(p);
	}

	return FUNC0(codec, nid, len, list);
}