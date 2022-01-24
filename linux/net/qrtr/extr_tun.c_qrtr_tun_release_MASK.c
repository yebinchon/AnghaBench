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
struct qrtr_tun {int /*<<< orphan*/  queue; int /*<<< orphan*/  ep; } ;
struct inode {int dummy; } ;
struct file {struct qrtr_tun* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qrtr_tun*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *filp)
{
	struct qrtr_tun *tun = filp->private_data;
	struct sk_buff *skb;

	FUNC2(&tun->ep);

	/* Discard all SKBs */
	while (!FUNC4(&tun->queue)) {
		skb = FUNC3(&tun->queue);
		FUNC1(skb);
	}

	FUNC0(tun);

	return 0;
}