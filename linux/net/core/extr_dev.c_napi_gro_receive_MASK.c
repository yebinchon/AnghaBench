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
struct napi_struct {int dummy; } ;
typedef  int /*<<< orphan*/  gro_result_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct napi_struct*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct napi_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

gro_result_t FUNC6(struct napi_struct *napi, struct sk_buff *skb)
{
	gro_result_t ret;

	FUNC3(skb, napi);
	FUNC4(skb);

	FUNC2(skb);

	ret = FUNC1(FUNC0(napi, skb), skb);
	FUNC5(ret);

	return ret;
}