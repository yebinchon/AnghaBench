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
struct xdp_frame {struct net_device* dev_rx; } ;
struct xdp_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct bpf_cpu_map_entry {int dummy; } ;

/* Variables and functions */
 int EOVERFLOW ; 
 int /*<<< orphan*/  FUNC0 (struct bpf_cpu_map_entry*,struct xdp_frame*) ; 
 struct xdp_frame* FUNC1 (struct xdp_buff*) ; 
 scalar_t__ FUNC2 (int) ; 

int FUNC3(struct bpf_cpu_map_entry *rcpu, struct xdp_buff *xdp,
		    struct net_device *dev_rx)
{
	struct xdp_frame *xdpf;

	xdpf = FUNC1(xdp);
	if (FUNC2(!xdpf))
		return -EOVERFLOW;

	/* Info needed when constructing SKB on remote CPU */
	xdpf->dev_rx = dev_rx;

	FUNC0(rcpu, xdpf);
	return 0;
}