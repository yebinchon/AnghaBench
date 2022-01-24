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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct batadv_tvlv_tt_vlan_data {int dummy; } ;
struct batadv_tvlv_tt_data {int flags; int /*<<< orphan*/  num_vlan; } ;
struct batadv_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_CNT_TT_REQUEST_RX ; 
 int /*<<< orphan*/  BATADV_CNT_TT_RESPONSE_RX ; 
 int /*<<< orphan*/  BATADV_DBG_TT ; 
 int BATADV_TT_DATA_TYPE_MASK ; 
 int BATADV_TT_FULL_TABLE ; 
#define  BATADV_TT_REQUEST 129 
#define  BATADV_TT_RESPONSE 128 
 int NET_RX_DROP ; 
 int NET_RX_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct batadv_priv*,char*,int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC1 (struct batadv_priv*,struct batadv_tvlv_tt_data*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct batadv_priv*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct batadv_priv*,struct batadv_tvlv_tt_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct batadv_priv *bat_priv,
					     u8 *src, u8 *dst,
					     void *tvlv_value,
					     u16 tvlv_value_len)
{
	struct batadv_tvlv_tt_data *tt_data;
	u16 tt_vlan_len, tt_num_entries;
	char tt_flag;
	bool ret;

	if (tvlv_value_len < sizeof(*tt_data))
		return NET_RX_SUCCESS;

	tt_data = (struct batadv_tvlv_tt_data *)tvlv_value;
	tvlv_value_len -= sizeof(*tt_data);

	tt_vlan_len = sizeof(struct batadv_tvlv_tt_vlan_data);
	tt_vlan_len *= FUNC6(tt_data->num_vlan);

	if (tvlv_value_len < tt_vlan_len)
		return NET_RX_SUCCESS;

	tvlv_value_len -= tt_vlan_len;
	tt_num_entries = FUNC5(tvlv_value_len);

	switch (tt_data->flags & BATADV_TT_DATA_TYPE_MASK) {
	case BATADV_TT_REQUEST:
		FUNC2(bat_priv, BATADV_CNT_TT_REQUEST_RX);

		/* If this node cannot provide a TT response the tt_request is
		 * forwarded
		 */
		ret = FUNC4(bat_priv, tt_data, src, dst);
		if (!ret) {
			if (tt_data->flags & BATADV_TT_FULL_TABLE)
				tt_flag = 'F';
			else
				tt_flag = '.';

			FUNC0(BATADV_DBG_TT, bat_priv,
				   "Routing TT_REQUEST to %pM [%c]\n",
				   dst, tt_flag);
			/* tvlv API will re-route the packet */
			return NET_RX_DROP;
		}
		break;
	case BATADV_TT_RESPONSE:
		FUNC2(bat_priv, BATADV_CNT_TT_RESPONSE_RX);

		if (FUNC3(bat_priv, dst)) {
			FUNC1(bat_priv, tt_data,
						  src, tt_num_entries);
			return NET_RX_SUCCESS;
		}

		if (tt_data->flags & BATADV_TT_FULL_TABLE)
			tt_flag =  'F';
		else
			tt_flag = '.';

		FUNC0(BATADV_DBG_TT, bat_priv,
			   "Routing TT_RESPONSE to %pM [%c]\n", dst, tt_flag);

		/* tvlv API will re-route the packet */
		return NET_RX_DROP;
	}

	return NET_RX_SUCCESS;
}