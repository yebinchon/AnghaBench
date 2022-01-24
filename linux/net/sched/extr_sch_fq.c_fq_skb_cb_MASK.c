#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct fq_skb_cb {int dummy; } ;
struct TYPE_2__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int) ; 
 TYPE_1__* FUNC1 (struct sk_buff*) ; 

__attribute__((used)) static inline struct fq_skb_cb *FUNC2(struct sk_buff *skb)
{
	FUNC0(skb, sizeof(struct fq_skb_cb));
	return (struct fq_skb_cb *)FUNC1(skb)->data;
}