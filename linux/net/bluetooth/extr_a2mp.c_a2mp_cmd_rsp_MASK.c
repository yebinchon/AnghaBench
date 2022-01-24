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
struct amp_mgr {int dummy; } ;
struct a2mp_cmd {int /*<<< orphan*/  len; int /*<<< orphan*/  code; int /*<<< orphan*/  ident; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC3(struct amp_mgr *mgr, struct sk_buff *skb,
			       struct a2mp_cmd *hdr)
{
	FUNC0("ident %d code 0x%2.2x", hdr->ident, hdr->code);

	FUNC2(skb, FUNC1(hdr->len));
	return 0;
}