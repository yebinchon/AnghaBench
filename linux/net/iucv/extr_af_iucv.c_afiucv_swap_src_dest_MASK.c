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
struct sk_buff {int /*<<< orphan*/  data; } ;
struct af_iucv_trans_hdr {char* destUserID; char* destAppName; char* srcUserID; char* srcAppName; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  ETH_HLEN ; 
 struct af_iucv_trans_hdr* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct sk_buff *skb)
{
	struct af_iucv_trans_hdr *trans_hdr = FUNC1(skb);
	char tmpID[8];
	char tmpName[8];

	FUNC0(trans_hdr->destUserID, sizeof(trans_hdr->destUserID));
	FUNC0(trans_hdr->destAppName, sizeof(trans_hdr->destAppName));
	FUNC0(trans_hdr->srcUserID, sizeof(trans_hdr->srcUserID));
	FUNC0(trans_hdr->srcAppName, sizeof(trans_hdr->srcAppName));
	FUNC2(tmpID, trans_hdr->srcUserID, 8);
	FUNC2(tmpName, trans_hdr->srcAppName, 8);
	FUNC2(trans_hdr->srcUserID, trans_hdr->destUserID, 8);
	FUNC2(trans_hdr->srcAppName, trans_hdr->destAppName, 8);
	FUNC2(trans_hdr->destUserID, tmpID, 8);
	FUNC2(trans_hdr->destAppName, tmpName, 8);
	FUNC4(skb, ETH_HLEN);
	FUNC3(skb->data, 0, ETH_HLEN);
}