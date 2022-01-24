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
struct station_parameters {scalar_t__ he_capa_len; void* he_capa; void* vht_capa; void* ht_capa; int /*<<< orphan*/  aid; } ;
struct genl_info {scalar_t__* attrs; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t NL80211_ATTR_HE_CAPABILITY ; 
 size_t NL80211_ATTR_HT_CAPABILITY ; 
 size_t NL80211_ATTR_PEER_AID ; 
 size_t NL80211_ATTR_VHT_CAPABILITY ; 
 scalar_t__ NL80211_HE_MIN_CAPABILITY_LEN ; 
 int FUNC0 (struct genl_info*,struct station_parameters*) ; 
 int FUNC1 (struct genl_info*,struct station_parameters*) ; 
 void* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct genl_info *info,
				    struct station_parameters *params)
{
	int err;
	/* Dummy STA entry gets updated once the peer capabilities are known */
	if (info->attrs[NL80211_ATTR_PEER_AID])
		params->aid = FUNC3(info->attrs[NL80211_ATTR_PEER_AID]);
	if (info->attrs[NL80211_ATTR_HT_CAPABILITY])
		params->ht_capa =
			FUNC2(info->attrs[NL80211_ATTR_HT_CAPABILITY]);
	if (info->attrs[NL80211_ATTR_VHT_CAPABILITY])
		params->vht_capa =
			FUNC2(info->attrs[NL80211_ATTR_VHT_CAPABILITY]);
	if (info->attrs[NL80211_ATTR_HE_CAPABILITY]) {
		params->he_capa =
			FUNC2(info->attrs[NL80211_ATTR_HE_CAPABILITY]);
		params->he_capa_len =
			FUNC4(info->attrs[NL80211_ATTR_HE_CAPABILITY]);

		if (params->he_capa_len < NL80211_HE_MIN_CAPABILITY_LEN)
			return -EINVAL;
	}

	err = FUNC0(info, params);
	if (err)
		return err;

	return FUNC1(info, params);
}