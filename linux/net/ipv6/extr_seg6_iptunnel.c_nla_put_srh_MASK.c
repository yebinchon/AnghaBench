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
struct seg6_iptunnel_encap {int dummy; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int FUNC0 (struct seg6_iptunnel_encap*) ; 
 int /*<<< orphan*/  FUNC1 (struct seg6_iptunnel_encap*,struct seg6_iptunnel_encap*,int) ; 
 struct seg6_iptunnel_encap* FUNC2 (struct nlattr*) ; 
 struct nlattr* FUNC3 (struct sk_buff*,int,int) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb, int attrtype,
		       struct seg6_iptunnel_encap *tuninfo)
{
	struct seg6_iptunnel_encap *data;
	struct nlattr *nla;
	int len;

	len = FUNC0(tuninfo);

	nla = FUNC3(skb, attrtype, len);
	if (!nla)
		return -EMSGSIZE;

	data = FUNC2(nla);
	FUNC1(data, tuninfo, len);

	return 0;
}