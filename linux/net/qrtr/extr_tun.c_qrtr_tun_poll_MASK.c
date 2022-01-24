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
struct qrtr_tun {int /*<<< orphan*/  queue; int /*<<< orphan*/  readq; } ;
struct file {struct qrtr_tun* private_data; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int __poll_t ;

/* Variables and functions */
 int EPOLLIN ; 
 int EPOLLRDNORM ; 
 int /*<<< orphan*/  FUNC0 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __poll_t FUNC2(struct file *filp, poll_table *wait)
{
	struct qrtr_tun *tun = filp->private_data;
	__poll_t mask = 0;

	FUNC0(filp, &tun->readq, wait);

	if (!FUNC1(&tun->queue))
		mask |= EPOLLIN | EPOLLRDNORM;

	return mask;
}