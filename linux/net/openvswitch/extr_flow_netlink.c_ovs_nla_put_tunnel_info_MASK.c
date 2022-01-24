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
struct ip_tunnel_info {int /*<<< orphan*/  mode; int /*<<< orphan*/  options_len; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int FUNC0 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ip_tunnel_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_tunnel_info*) ; 

int FUNC3(struct sk_buff *skb,
			    struct ip_tunnel_info *tun_info)
{
	return FUNC0(skb, &tun_info->key,
				  FUNC2(tun_info),
				  tun_info->options_len,
				  FUNC1(tun_info), tun_info->mode);
}