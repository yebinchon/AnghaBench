#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  xmit; } ;
struct qrtr_tun {TYPE_1__ ep; int /*<<< orphan*/  readq; int /*<<< orphan*/  queue; } ;
struct inode {int dummy; } ;
struct file {struct qrtr_tun* private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  QRTR_EP_NID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct qrtr_tun* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qrtr_tun_send ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *filp)
{
	struct qrtr_tun *tun;

	tun = FUNC1(sizeof(*tun), GFP_KERNEL);
	if (!tun)
		return -ENOMEM;

	FUNC3(&tun->queue);
	FUNC0(&tun->readq);

	tun->ep.xmit = qrtr_tun_send;

	filp->private_data = tun;

	return FUNC2(&tun->ep, QRTR_EP_NID_AUTO);
}