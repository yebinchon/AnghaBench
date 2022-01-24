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
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct hda_codec*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int FUNC2 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/  const**) ; 

int FUNC3(struct hda_codec *codec, hda_nid_t nid,
			    hda_nid_t *conn_list, int max_conns)
{
	const hda_nid_t *list;
	int len = FUNC2(codec, nid, &list);

	if (len > 0 && conn_list) {
		if (len > max_conns) {
			FUNC0(codec, "Too many connections %d for NID 0x%x\n",
				   len, nid);
			return -EINVAL;
		}
		FUNC1(conn_list, list, len * sizeof(hda_nid_t));
	}

	return len;
}