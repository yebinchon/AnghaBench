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
struct ovs_tunnel_info {scalar_t__ tun_dst; } ;
struct nlattr {int dummy; } ;
struct dst_entry {int dummy; } ;

/* Variables and functions */
#define  OVS_KEY_ATTR_TUNNEL_INFO 128 
 int /*<<< orphan*/  FUNC0 (struct dst_entry*) ; 
 void* FUNC1 (struct nlattr const*) ; 
 int FUNC2 (struct nlattr const*) ; 

__attribute__((used)) static void FUNC3(const struct nlattr *a)
{
	const struct nlattr *ovs_key = FUNC1(a);
	struct ovs_tunnel_info *ovs_tun;

	switch (FUNC2(ovs_key)) {
	case OVS_KEY_ATTR_TUNNEL_INFO:
		ovs_tun = FUNC1(ovs_key);
		FUNC0((struct dst_entry *)ovs_tun->tun_dst);
		break;
	}
}