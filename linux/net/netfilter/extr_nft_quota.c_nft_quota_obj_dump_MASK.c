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
struct nft_quota {int dummy; } ;
struct nft_object {int dummy; } ;

/* Variables and functions */
 struct nft_quota* FUNC0 (struct nft_object*) ; 
 int FUNC1 (struct sk_buff*,struct nft_quota*,int) ; 

__attribute__((used)) static int FUNC2(struct sk_buff *skb, struct nft_object *obj,
			      bool reset)
{
	struct nft_quota *priv = FUNC0(obj);

	return FUNC1(skb, priv, reset);
}