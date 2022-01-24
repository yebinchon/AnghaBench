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
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  dev; } ;
struct pt_regs {int dummy; } ;
struct net_device {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  fmt ;
typedef  int /*<<< orphan*/  devname ;

/* Variables and functions */
 int IFNAMSIZ ; 
 scalar_t__ FUNC0 (struct pt_regs*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,struct sk_buff*,int) ; 

int FUNC4(struct pt_regs *ctx)
{
	/* attaches to kprobe netif_receive_skb,
	 * looks for packets on loobpack device and prints them
	 */
	char devname[IFNAMSIZ];
	struct net_device *dev;
	struct sk_buff *skb;
	int len;

	/* non-portable! works for the given kernel only */
	skb = (struct sk_buff *) FUNC0(ctx);
	dev = FUNC1(skb->dev);
	len = FUNC1(skb->len);

	FUNC2(devname, sizeof(devname), dev->name);

	if (devname[0] == 'l' && devname[1] == 'o') {
		char fmt[] = "skb %p len %d\n";
		/* using bpf_trace_printk() for DEBUG ONLY */
		FUNC3(fmt, sizeof(fmt), skb, len);
	}

	return 0;
}