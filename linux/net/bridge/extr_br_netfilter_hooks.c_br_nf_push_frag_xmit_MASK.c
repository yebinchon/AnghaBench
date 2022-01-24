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
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct brnf_frag_data {int /*<<< orphan*/  encap_size; int /*<<< orphan*/  size; int /*<<< orphan*/  mac; int /*<<< orphan*/  vlan_tci; scalar_t__ vlan_proto; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct net*,struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  brnf_frag_data_storage ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct brnf_frag_data* FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct net *net, struct sock *sk, struct sk_buff *skb)
{
	struct brnf_frag_data *data;
	int err;

	data = FUNC7(&brnf_frag_data_storage);
	err = FUNC6(skb, data->size);

	if (err) {
		FUNC3(skb);
		return 0;
	}

	if (data->vlan_proto)
		FUNC1(skb, data->vlan_proto, data->vlan_tci);

	FUNC5(skb, -data->size, data->mac, data->size);
	FUNC0(skb, data->encap_size);

	FUNC4(skb);
	return FUNC2(net, sk, skb);
}