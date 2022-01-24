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
struct key_parse {int idx; int type; scalar_t__ def; scalar_t__ defmgmt; int /*<<< orphan*/  def_multi; scalar_t__ def_uni; } ;
struct genl_info {scalar_t__* attrs; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct genl_info*,char*) ; 
 size_t NL80211_ATTR_KEY ; 
 int /*<<< orphan*/  FUNC1 (struct key_parse*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct genl_info*,scalar_t__,struct key_parse*) ; 
 int FUNC3 (struct genl_info*,struct key_parse*) ; 

__attribute__((used)) static int FUNC4(struct genl_info *info, struct key_parse *k)
{
	int err;

	FUNC1(k, 0, sizeof(*k));
	k->idx = -1;
	k->type = -1;

	if (info->attrs[NL80211_ATTR_KEY])
		err = FUNC2(info, info->attrs[NL80211_ATTR_KEY], k);
	else
		err = FUNC3(info, k);

	if (err)
		return err;

	if (k->def && k->defmgmt) {
		FUNC0(info, "key with def && defmgmt is invalid");
		return -EINVAL;
	}

	if (k->defmgmt) {
		if (k->def_uni || !k->def_multi) {
			FUNC0(info, "defmgmt key must be mcast");
			return -EINVAL;
		}
	}

	if (k->idx != -1) {
		if (k->defmgmt) {
			if (k->idx < 4 || k->idx > 5) {
				FUNC0(info,
						 "defmgmt key idx not 4 or 5");
				return -EINVAL;
			}
		} else if (k->def) {
			if (k->idx < 0 || k->idx > 3) {
				FUNC0(info, "def key idx not 0-3");
				return -EINVAL;
			}
		} else {
			if (k->idx < 0 || k->idx > 5) {
				FUNC0(info, "key idx not 0-5");
				return -EINVAL;
			}
		}
	}

	return 0;
}