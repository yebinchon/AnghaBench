#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nlattr {int dummy; } ;
struct ip_devname_ifindex {int dummy; } ;
struct ifinfomsg {scalar_t__ ifi_index; } ;
struct bpf_netdev_t {scalar_t__ filter_idx; int used_len; int array_len; TYPE_1__* devices; } ;
struct TYPE_3__ {scalar_t__ ifindex; int /*<<< orphan*/  devname; } ;

/* Variables and functions */
 int ENOMEM ; 
 size_t IFLA_IFNAME ; 
 int FUNC0 (struct ifinfomsg*,struct nlattr**) ; 
 char* FUNC1 (struct nlattr*) ; 
 TYPE_1__* FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,char*) ; 

__attribute__((used)) static int FUNC4(void *cookie, void *msg, struct nlattr **tb)
{
	struct bpf_netdev_t *netinfo = cookie;
	struct ifinfomsg *ifinfo = msg;

	if (netinfo->filter_idx > 0 && netinfo->filter_idx != ifinfo->ifi_index)
		return 0;

	if (netinfo->used_len == netinfo->array_len) {
		netinfo->devices = FUNC2(netinfo->devices,
			(netinfo->array_len + 16) *
			sizeof(struct ip_devname_ifindex));
		if (!netinfo->devices)
			return -ENOMEM;

		netinfo->array_len += 16;
	}
	netinfo->devices[netinfo->used_len].ifindex = ifinfo->ifi_index;
	FUNC3(netinfo->devices[netinfo->used_len].devname,
		 sizeof(netinfo->devices[netinfo->used_len].devname),
		 "%s",
		 tb[IFLA_IFNAME]
			 ? FUNC1(tb[IFLA_IFNAME])
			 : "");
	netinfo->used_len++;

	return FUNC0(ifinfo, tb);
}