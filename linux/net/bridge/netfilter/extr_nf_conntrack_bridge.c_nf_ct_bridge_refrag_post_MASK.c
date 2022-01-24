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
struct nf_bridge_frag_data {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct net*,struct sock*,struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*,struct nf_bridge_frag_data const*) ; 

__attribute__((used)) static int FUNC2(struct net *net, struct sock *sk,
				    const struct nf_bridge_frag_data *data,
				    struct sk_buff *skb)
{
	int err;

	err = FUNC1(skb, data);
	if (err < 0)
		return err;

	return FUNC0(net, sk, skb);
}