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
struct text_match {int /*<<< orphan*/  config; scalar_t__ to_offset; int /*<<< orphan*/  to_layer; scalar_t__ from_offset; int /*<<< orphan*/  from_layer; } ;
struct tcf_pkt_info {int dummy; } ;
struct tcf_ematch {int dummy; } ;
struct sk_buff {int data; } ;

/* Variables and functions */
 struct text_match* FUNC0 (struct tcf_ematch*) ; 
 scalar_t__ UINT_MAX ; 
 scalar_t__ FUNC1 (struct sk_buff*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct sk_buff *skb, struct tcf_ematch *m,
			 struct tcf_pkt_info *info)
{
	struct text_match *tm = FUNC0(m);
	int from, to;

	from = FUNC2(skb, tm->from_layer) - skb->data;
	from += tm->from_offset;

	to = FUNC2(skb, tm->to_layer) - skb->data;
	to += tm->to_offset;

	return FUNC1(skb, from, to, tm->config) != UINT_MAX;
}