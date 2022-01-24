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
struct sk_buff {int dummy; } ;
struct genl_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 void* FUNC0 (struct sk_buff*,struct genl_info*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nl802154_family ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct sk_buff *FUNC3(struct genl_info *info,
					int flags, u8 req)
{
	void *hdr;
	struct sk_buff *msg = FUNC2(NLMSG_DEFAULT_SIZE, GFP_ATOMIC);

	if (!msg)
		return NULL;

	hdr = FUNC0(msg, info,
				&nl802154_family, flags, req);
	if (!hdr) {
		FUNC1(msg);
		return NULL;
	}

	return msg;
}