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
struct pm_qos_request {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct pm_qos_request* private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 long PM_QOS_CPU_DMA_LATENCY ; 
 int /*<<< orphan*/  PM_QOS_DEFAULT_VALUE ; 
 long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 struct pm_qos_request* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pm_qos_request*,long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *filp)
{
	long pm_qos_class;

	pm_qos_class = FUNC0(FUNC1(inode));
	if (pm_qos_class >= PM_QOS_CPU_DMA_LATENCY) {
		struct pm_qos_request *req = FUNC2(sizeof(*req), GFP_KERNEL);
		if (!req)
			return -ENOMEM;

		FUNC3(req, pm_qos_class, PM_QOS_DEFAULT_VALUE);
		filp->private_data = req;

		return 0;
	}
	return -EPERM;
}