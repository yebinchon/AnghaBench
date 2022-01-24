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
typedef  int /*<<< orphan*/  u32 ;
struct smc_user_pnetentry {int dummy; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  SMC_PNETID_GET ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,void*) ; 
 void* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  smc_pnet_nl_family ; 
 scalar_t__ FUNC3 (struct sk_buff*,struct smc_user_pnetentry*) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb,
			     u32 portid, u32 seq, u32 flags,
			     struct smc_user_pnetentry *pnetelem)
{
	void *hdr;

	hdr = FUNC2(skb, portid, seq, &smc_pnet_nl_family,
			  flags, SMC_PNETID_GET);
	if (!hdr)
		return -ENOMEM;
	if (FUNC3(skb, pnetelem) < 0) {
		FUNC0(skb, hdr);
		return -EMSGSIZE;
	}
	FUNC1(skb, hdr);
	return 0;
}