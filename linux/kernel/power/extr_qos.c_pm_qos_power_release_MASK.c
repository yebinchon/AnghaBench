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
 int /*<<< orphan*/  FUNC0 (struct pm_qos_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct pm_qos_request*) ; 

__attribute__((used)) static int FUNC2(struct inode *inode, struct file *filp)
{
	struct pm_qos_request *req;

	req = filp->private_data;
	FUNC1(req);
	FUNC0(req);

	return 0;
}