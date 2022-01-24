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
struct seg6_local_lwt {int /*<<< orphan*/  nh6; } ;
struct nlattr {int dummy; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  SEG6_LOCAL_NH6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nlattr*) ; 
 struct nlattr* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct sk_buff *skb, struct seg6_local_lwt *slwt)
{
	struct nlattr *nla;

	nla = FUNC2(skb, SEG6_LOCAL_NH6, sizeof(struct in6_addr));
	if (!nla)
		return -EMSGSIZE;

	FUNC0(FUNC1(nla), &slwt->nh6, sizeof(struct in6_addr));

	return 0;
}