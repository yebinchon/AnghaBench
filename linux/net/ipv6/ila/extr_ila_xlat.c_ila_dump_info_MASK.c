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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct ila_map {int dummy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,void*) ; 
 void* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct ila_map*,struct sk_buff*) ; 
 int /*<<< orphan*/  ila_nl_family ; 

__attribute__((used)) static int FUNC4(struct ila_map *ila,
			 u32 portid, u32 seq, u32 flags,
			 struct sk_buff *skb, u8 cmd)
{
	void *hdr;

	hdr = FUNC2(skb, portid, seq, &ila_nl_family, flags, cmd);
	if (!hdr)
		return -ENOMEM;

	if (FUNC3(ila, skb) < 0)
		goto nla_put_failure;

	FUNC1(skb, hdr);
	return 0;

nla_put_failure:
	FUNC0(skb, hdr);
	return -EMSGSIZE;
}