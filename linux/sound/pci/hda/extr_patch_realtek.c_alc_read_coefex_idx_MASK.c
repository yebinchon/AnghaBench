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
 int /*<<< orphan*/  AC_VERB_GET_PROC_COEF ; 
 int /*<<< orphan*/  AC_VERB_SET_COEF_INDEX ; 
 unsigned int FUNC0 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_codec*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct hda_codec *codec, hda_nid_t nid,
			       unsigned int coef_idx)
{
	unsigned int val;

	FUNC1(codec, nid, 0, AC_VERB_SET_COEF_INDEX, coef_idx);
	val = FUNC0(codec, nid, 0, AC_VERB_GET_PROC_COEF, 0);
	return val;
}