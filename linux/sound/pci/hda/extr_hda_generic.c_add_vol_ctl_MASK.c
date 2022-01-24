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
struct nid_path {unsigned int* ctls; } ;
struct hda_codec {int /*<<< orphan*/  spec; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDA_CTL_WIDGET_VOL ; 
 size_t NID_PATH_VOL_CTL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,unsigned int) ; 
 unsigned int FUNC1 (unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct hda_codec *codec, const char *pfx, int cidx,
		       unsigned int chs, struct nid_path *path)
{
	unsigned int val;
	if (!path)
		return 0;
	val = path->ctls[NID_PATH_VOL_CTL];
	if (!val)
		return 0;
	val = FUNC1(val, chs);
	return FUNC0(codec->spec, HDA_CTL_WIDGET_VOL, pfx, cidx, val);
}