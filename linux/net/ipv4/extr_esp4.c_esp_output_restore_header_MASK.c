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
struct esp_output_extra {scalar_t__ esphoff; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {void* tmp; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,scalar_t__) ; 
 struct esp_output_extra* FUNC2 (void*) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC4(struct sk_buff *skb)
{
	void *tmp = FUNC0(skb)->tmp;
	struct esp_output_extra *extra = FUNC2(tmp);

	FUNC1(skb, FUNC3(skb) + extra->esphoff -
				sizeof(__be32));
}