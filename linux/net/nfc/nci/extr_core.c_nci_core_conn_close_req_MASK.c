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
struct nci_dev {int dummy; } ;
typedef  unsigned long __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  NCI_OP_CORE_CONN_CLOSE_CMD ; 
 int /*<<< orphan*/  FUNC0 (struct nci_dev*,int /*<<< orphan*/ ,int,unsigned long*) ; 

__attribute__((used)) static void FUNC1(struct nci_dev *ndev, unsigned long opt)
{
	__u8 conn_id = opt;

	FUNC0(ndev, NCI_OP_CORE_CONN_CLOSE_CMD, 1, &conn_id);
}