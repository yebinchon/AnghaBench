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
typedef  int /*<<< orphan*/  const hda_nid_t ;

/* Variables and functions */
 char const* FUNC0 (struct hda_codec*,int /*<<< orphan*/  const) ; 
 int FUNC1 (int /*<<< orphan*/  const,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC2(struct hda_codec *codec, hda_nid_t nid,
			      const hda_nid_t *pins, int num_pins)
{
	int i, j, idx = 0;

	const char *pfx = FUNC0(codec, nid);

	i = FUNC1(nid, pins, num_pins);
	if (i < 0)
		return -1;
	for (j = 0; j < i; j++)
		if (pfx == FUNC0(codec, pins[j]))
			idx++;

	return idx;
}