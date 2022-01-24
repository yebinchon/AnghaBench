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
typedef  int /*<<< orphan*/  u16 ;
struct tlv_desc {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tlv_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tlv_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC3(struct sk_buff *skb, u16 type)
{
	struct tlv_desc *tlv = (struct tlv_desc *)skb->data;

	FUNC0(tlv, 0);
	FUNC1(tlv, type);
	FUNC2(skb, sizeof(struct tlv_desc));
}