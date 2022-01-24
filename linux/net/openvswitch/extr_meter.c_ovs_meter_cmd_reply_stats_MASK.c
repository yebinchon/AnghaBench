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
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct ovs_flow_stats {int dummy; } ;
struct nlattr {int dummy; } ;
struct dp_meter_band {int /*<<< orphan*/  stats; } ;
struct dp_meter {scalar_t__ n_bands; struct dp_meter_band* bands; int /*<<< orphan*/  used; int /*<<< orphan*/  stats; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  OVS_BAND_ATTR_STATS ; 
 int /*<<< orphan*/  OVS_BAND_ATTR_UNSPEC ; 
 int /*<<< orphan*/  OVS_METER_ATTR_BANDS ; 
 int /*<<< orphan*/  OVS_METER_ATTR_ID ; 
 int /*<<< orphan*/  OVS_METER_ATTR_PAD ; 
 int /*<<< orphan*/  OVS_METER_ATTR_STATS ; 
 int /*<<< orphan*/  OVS_METER_ATTR_USED ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *reply, u32 meter_id,
				     struct dp_meter *meter)
{
	struct nlattr *nla;
	struct dp_meter_band *band;
	u16 i;

	if (FUNC3(reply, OVS_METER_ATTR_ID, meter_id))
		goto error;

	if (!meter)
		return 0;

	if (FUNC2(reply, OVS_METER_ATTR_STATS,
		    sizeof(struct ovs_flow_stats), &meter->stats) ||
	    FUNC4(reply, OVS_METER_ATTR_USED, meter->used,
			      OVS_METER_ATTR_PAD))
		goto error;

	nla = FUNC1(reply, OVS_METER_ATTR_BANDS);
	if (!nla)
		goto error;

	band = meter->bands;

	for (i = 0; i < meter->n_bands; ++i, ++band) {
		struct nlattr *band_nla;

		band_nla = FUNC1(reply, OVS_BAND_ATTR_UNSPEC);
		if (!band_nla || FUNC2(reply, OVS_BAND_ATTR_STATS,
					 sizeof(struct ovs_flow_stats),
					 &band->stats))
			goto error;
		FUNC0(reply, band_nla);
	}
	FUNC0(reply, nla);

	return 0;
error:
	return -EMSGSIZE;
}