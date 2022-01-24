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
struct sk_buff {int dummy; } ;
struct batadv_priv {int dummy; } ;
struct batadv_neigh_node {int dummy; } ;
struct batadv_dat_candidate {scalar_t__ type; int /*<<< orphan*/  orig_node; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  BATADV_CNT_DAT_GET_TX ; 
 int /*<<< orphan*/  BATADV_CNT_DAT_PUT_TX ; 
 int BATADV_DAT_CANDIDATES_NUM ; 
 scalar_t__ BATADV_DAT_CANDIDATE_NOT_FOUND ; 
 int /*<<< orphan*/  BATADV_DBG_DAT ; 
 int /*<<< orphan*/  BATADV_IF_DEFAULT ; 
#define  BATADV_P_DAT_DHT_GET 129 
#define  BATADV_P_DAT_DHT_PUT 128 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int NET_XMIT_SUCCESS ; 
 struct batadv_dat_candidate* FUNC0 (struct batadv_priv*,int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct batadv_priv*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct batadv_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct batadv_neigh_node*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct batadv_neigh_node* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct batadv_priv*,struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct sk_buff*,struct batadv_neigh_node*) ; 
 int /*<<< orphan*/  FUNC8 (struct batadv_dat_candidate*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 struct sk_buff* FUNC10 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC11(struct batadv_priv *bat_priv,
				    struct sk_buff *skb, __be32 ip,
				    unsigned short vid, int packet_subtype)
{
	int i;
	bool ret = false;
	int send_status;
	struct batadv_neigh_node *neigh_node = NULL;
	struct sk_buff *tmp_skb;
	struct batadv_dat_candidate *cand;

	cand = FUNC0(bat_priv, ip, vid);
	if (!cand)
		goto out;

	FUNC1(BATADV_DBG_DAT, bat_priv, "DHT_SEND for %pI4\n", &ip);

	for (i = 0; i < BATADV_DAT_CANDIDATES_NUM; i++) {
		if (cand[i].type == BATADV_DAT_CANDIDATE_NOT_FOUND)
			continue;

		neigh_node = FUNC5(cand[i].orig_node,
						    BATADV_IF_DEFAULT);
		if (!neigh_node)
			goto free_orig;

		tmp_skb = FUNC10(skb, GFP_ATOMIC);
		if (!FUNC6(bat_priv, tmp_skb,
							   cand[i].orig_node,
							   packet_subtype)) {
			FUNC9(tmp_skb);
			goto free_neigh;
		}

		send_status = FUNC7(tmp_skb, neigh_node);
		if (send_status == NET_XMIT_SUCCESS) {
			/* count the sent packet */
			switch (packet_subtype) {
			case BATADV_P_DAT_DHT_GET:
				FUNC2(bat_priv,
						   BATADV_CNT_DAT_GET_TX);
				break;
			case BATADV_P_DAT_DHT_PUT:
				FUNC2(bat_priv,
						   BATADV_CNT_DAT_PUT_TX);
				break;
			}

			/* packet sent to a candidate: return true */
			ret = true;
		}
free_neigh:
		FUNC3(neigh_node);
free_orig:
		FUNC4(cand[i].orig_node);
	}

out:
	FUNC8(cand);
	return ret;
}