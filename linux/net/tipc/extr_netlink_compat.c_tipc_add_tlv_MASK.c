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
struct tlv_desc {void* tlv_len; void* tlv_type; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct tlv_desc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb, u16 type, void *data, u16 len)
{
	struct tlv_desc *tlv = (struct tlv_desc *)FUNC6(skb);

	if (FUNC7(skb) < FUNC2(len))
		return -EMSGSIZE;

	FUNC5(skb, FUNC2(len));
	tlv->tlv_type = FUNC3(type);
	tlv->tlv_len = FUNC3(FUNC1(len));
	if (len && data)
		FUNC4(FUNC0(tlv), data, len);

	return 0;
}