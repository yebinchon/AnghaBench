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
struct nci_cmd_param {size_t len; int /*<<< orphan*/ * payload; int /*<<< orphan*/  opcode; } ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  NCI_CMD_TIMEOUT ; 
 int /*<<< orphan*/  NCI_GID_PROPRIETARY ; 
 int FUNC0 (struct nci_dev*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nci_generic_req ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct nci_dev *ndev, __u8 oid, size_t len, __u8 *payload)
{
	struct nci_cmd_param param;

	param.opcode = FUNC2(NCI_GID_PROPRIETARY, oid);
	param.len = len;
	param.payload = payload;

	return FUNC0(ndev, nci_generic_req, (unsigned long)&param,
			     FUNC1(NCI_CMD_TIMEOUT));
}